require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ['Y', 'Z', 'D', 'U', 'Q', 'E', 'Z', 'Y', 'Q', 'I']
  end

  # game rules
  # The word can’t be built out of the original grid
  # The word is valid according to the grid, but is not a valid English word
  # The word is valid according to the grid and is an English word

  def score
    url = "https://dictionary.lewagon.com/"
    characters = JSON.parse(URI.parse(url).read)
    @word = params[:word]
    @word.split.all?(['Y', 'Z', 'D', 'U', 'Q', 'E', 'Z', 'Y', 'Q', 'I'])
    raise
  end
end
