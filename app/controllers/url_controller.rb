class UrlController < ApplicationController
  def index
    @urls = Url.all
    root_url = root_url
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(long_url: params[:long_url])
    @url.save
  end
  def redirect
    @url = Url.find(params[:id])
    redirect_to @url.long_url
  end
end
