require 'date'
class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  def index
  end

  def about
  end

  def contact
  end

  def dashboard
    @setting = Setting.last
    @themes = Theme.all
  end
end
