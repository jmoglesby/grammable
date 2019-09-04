# frozen_string_literal: true

class GramsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  before_action :gram, only: %i[show]

  def index
    @grams = Gram.all
  end

  def show
    render plain: 'No Gram with that ID Found', status: :not_found unless @gram.present?
  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = current_user.grams.create(gram_params)
    if @gram.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  def gram_params
    params.require(:gram).permit(:message)
  end

  def gram
    @gram ||= Gram.find_by_id(params[:id])
  end
end
