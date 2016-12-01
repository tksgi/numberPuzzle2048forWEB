class HomeController < ApplicationController
  def top
  end
  def puzzle2048
  	@score=Score.all
  end
end
