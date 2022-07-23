class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @input = params[:message]
    if @input == 'I am going to work'
      @reply = 'Great!'
    elsif @input.end_with?('?')
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
