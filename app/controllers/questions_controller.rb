# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @input = params[:question]

    @answer =
      if @input == 'I am going to work'
        'Great!'
      elsif @input.include?('?')
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
