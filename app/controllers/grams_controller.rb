# frozen_string_literal: true

class GramsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit update destroy]
  before_action :gram, only: %i[show edit update destroy]
  before_action :ensure_user_is_owner, only: %i[edit update destroy]

  def index
    @grams = Gram.all
  end

  def show; end

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

  def edit; end

  def update
    @gram.update_attributes(gram_params)
    if @gram.valid?
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gram.delete
    redirect_to root_path
  end

  private # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  def gram_params
    params.require(:gram).permit(:message, :picture)
  end

  def gram
    @gram ||= Gram.find_by_id(params[:id])
    render plain: 'No Gram with that ID found', status: :not_found if @gram.blank?
  end

  def ensure_user_is_owner
    render plain: 'Forbidden', status: :forbidden if @gram.user != current_user
  end
end
