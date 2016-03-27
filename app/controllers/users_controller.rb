class UsersController < ApplicationController
  # before_filter :set_instance_var


  def index
    @featured_artists = FeaturedArtist.limit(5)
    @users = User.all

  end

  # def set_instance_var
  #   @featured_artists = FeaturedArtist.limit(5)
  # end
end
