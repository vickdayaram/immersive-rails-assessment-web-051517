
class EpisodeGuestsController < ApplicationController

  def new
    @episodeguest = EpisodeGuest.new
  end

  def create
    @guest = Guest.find_by(name: params[:episode_guest][:guest])
    @episode = Episode.find_by(number: params[:episode_guest][:episode])
    @episodeguest = EpisodeGuest.create(rating: params[:rating], episode_id: @episode.id, guest_id: @guest.id)
    #redirected to all episodes, was unsure as to where to redirect, but wanted
    #to continue to work on other problems.
    redirect_to episode_path(@episode)
  end
end
