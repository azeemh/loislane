require 'date'
class StoriesController < ApplicationController
  before_action :set_story, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :only_journalists, only: [:new]

  def only_journalists
    if current_user.journalist.nil?
      flash[:alert] = 'You have not setup your journalist account yet. <a href="/journalists/new">Make A Journalist Account</a>'
      redirect_back(fallback_location: root_path)
    end
  end

  # GET /stories or /stories.json
  def index
    @stories = Story.all.published
  end

  # GET /stories/1 or /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories or /stories.json
  def create
    @story = Story.new(story_params)
    @story.user = current_user

    if @story.publish == true 
      @story.publishdate = DateTime.now
    end

    respond_to do |format|
      if @story.save
        format.html { redirect_to story_url(@story), notice: "Story was successfully created." }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1 or /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)

        #sets the publish date of a news story to day it was first published. (saved with publish = true)
        if @story.publish? && @story.publishdate.nil?
          @story.publishdate = DateTime.now
          @story.save
        end

        format.html { redirect_to story_url(@story), notice: "Story was successfully updated." }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1 or /stories/1.json
  def destroy
    @story.destroy!

    respond_to do |format|
      format.html { redirect_to "/stories", notice: "Story was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      #@story = Story.find(params[:id]) #old
      @story = Story.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def story_params
      params.require(:story).permit(:title, :slug, :content, :tags, :image, :video, :audio, :factchecked, :proofread, :enableautopublish, :autopublishdate, :publish, :publishdate, :user_id, :category_id, articleassets: [])
    end
end
