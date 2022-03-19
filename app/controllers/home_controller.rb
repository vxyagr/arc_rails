class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index;end

  def authorized_example
    render plain: "if you’re reading this, you are still here"
  end
end
