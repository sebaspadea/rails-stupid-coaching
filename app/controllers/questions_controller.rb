class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @question = params[:question]
  if @question[(@question.length - 1)] == "?"
    @answer = "Silly question, get dressed and go to work!"
  elsif @question.downcase == "I am going to work right now!".downcase
    @answer = "Great!"
  else
    @answer = "I don't care, get dressed and go to work!"
  end
  end
end