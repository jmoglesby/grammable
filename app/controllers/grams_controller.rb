# frozen_string_literal: true

class GramsController < ApplicationController
  def index
    @grams = Gram.all
  end

  def new
    @gram = Gram.new
  end

  def create
    new_gram = Gram.create(gram_params)
    if new_gram.valid?
      redirect_to :root
    else
      render :new, status: :unprocessable_entity
    end
  end

  private # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  def gram_params
    params.require(:gram).permit(:message)
  end
end
