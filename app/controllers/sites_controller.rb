class SitesController < ApplicationController
  skip_before_action :authenticate_user, only: :home

  def home
    @posts = Post.recent
  end

  def about; end
end
