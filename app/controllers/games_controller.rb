class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @score = params[:score].split("")
    letters = params[:letters].split("")
    counter = 0
    @score.each { |letter|
      unless letters.include?(letter)
      counter += 1
      end
    }
    if counter > 0
      @result = "Sorry, #{@score.join} is not included in #{letters.join("") }"
    else
      @result = "Congrats #{@score.join} is included in #{letters.join("")}"
    end
  end
end
