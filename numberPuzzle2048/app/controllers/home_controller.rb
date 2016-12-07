class HomeController < ApplicationController
  def top
  end
  def puzzle2048
  	@score=Score.all
  end
  def rank
  	if Rails.application.routes.recognize_path(request.referrer)[:action]=="puzzle2048"
	  	@score=Score.all
  		@ranking=[@score.find_by(rank:1).score,@score.find_by(rank:2).score,@score.find_by(rank:3).score,@score.find_by(rank:4).score,@score.find_by(rank:5).score,params[:score].to_i]
	  	@ranking.sort! {|a, b| b <=> a }
  		@ranking.delete_at(-1)
  		@ranking.each_with_index do |newscore,i|
  			@eachscore=@score.find_by(rank:i+1)
  			@eachscore.score=newscore
  			@eachscore.save!
   		end
   	end
  	@newscore=Score.all
  end
end
