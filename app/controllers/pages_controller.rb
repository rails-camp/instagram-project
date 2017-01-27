class PagesController < ApplicationController
  def home
    access_token = ENV.fetch("IG_ACCESS_TOKEN")
    url = "https://api.instagram.com/v1/users/self/media/recent/?access_token=#{access_token}"
    @pictures = HTTParty.get(url)
  end
end
