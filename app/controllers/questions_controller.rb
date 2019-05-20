# frozen_string_literal: true

# teste
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params['question'].capitalize

    if @question.split('').last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question != 'I am going to work'
      @answer = "I don't care, get dressed and go to work!"
    else
      @answer = 'Great!'
    end

    @answer
    # raise
  end
end
