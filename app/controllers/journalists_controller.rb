class JournalistsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_journalist, only: %i[ show edit update destroy ]
  before_action :only1, only: [:new]

  def only1
    unless current_user.journalist == nil
      flash[:alert] = 'You already have a journalist account!'
      redirect_to journalists_path
    end
  end

  # GET /journalists or /journalists.json
  def index
    @journalists = Journalist.all
  end

  # GET /journalists/1 or /journalists/1.json
  def show
  end

  # GET /journalists/new
  def new
    @journalist = Journalist.new
  end

  # GET /journalists/1/edit
  def edit
  end

  # POST /journalists or /journalists.json
  def create
    @journalist = Journalist.new(journalist_params)
    @journalist.user = current_user

    respond_to do |format|
      if @journalist.save
        format.html { redirect_to journalist_url(@journalist), notice: "Journalist was successfully created." }
        format.json { render :show, status: :created, location: @journalist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @journalist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journalists/1 or /journalists/1.json
  def update
    respond_to do |format|
      if @journalist.update(journalist_params)
        format.html { redirect_to journalist_url(@journalist), notice: "Journalist was successfully updated." }
        format.json { render :show, status: :ok, location: @journalist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @journalist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journalists/1 or /journalists/1.json
  def destroy
    @journalist.destroy!

    respond_to do |format|
      format.html { redirect_to journalists_url, notice: "Journalist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journalist
      @journalist = Journalist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journalist_params
      params.require(:journalist).permit(:name, :bio, :is_editor, :user_id)
    end
end
