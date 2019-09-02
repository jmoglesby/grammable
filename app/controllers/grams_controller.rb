# frozen_string_literal: true

class GramsController < ApplicationController
  def index
    @grams = Gram.all
  end

  def new
    @gram = Gram.new
  end

  def create
    Gram.create(gram_params)
    redirect_to :root
  end

  private # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  def gram_params
    params.require(:gram).permit(:message)
  end
end
