class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]
    if question.end_with?("?")
      
      @reply = "Silly question, get dressed and go to work!"
      if question == question.upcase
      @reply = "I can feel your motivation! Silly question, get dressed and go to work!"
      else
      @reply = "Silly question, get dressed and go to work!"
      end
    elsif question.upcase == "I AM GOING TO WORK RIGHT NOW!"
      @reply = ""
    elsif question == question.upcase
      @reply = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
