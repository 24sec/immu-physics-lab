class LabsController < ApplicationController
  before_action :load_lab, except: %i[index new create update]

  def index
    @labs = Lab.all.includes(:articles)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @lab.destroy
  end

  private

  def load_lab
    @lab = Lab.find(params[:id])
  end
end
