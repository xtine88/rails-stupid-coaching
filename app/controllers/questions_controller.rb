class QuestionsController < ApplicationController
  def ask
    # @your_message = params[:query]
  end


  def answer
    @your_message = params[:query]
    if @your_message && @your_message.downcase == "i am going to work right now!"
       @coach_response = ""
    elsif @your_message && @your_message.end_with?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    else
     @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end

