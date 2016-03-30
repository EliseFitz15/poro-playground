class PorosController < ApplicationController
  def index
    @poros = Poro.all
  end

  def new
    @poro = Poro.new
  end

  def create
    @poro = Poro.new(poro_params)

    if @poro.save
      flash[:notice] = "PORO added."
      redirect_to poros_path
    else
      flash[:errors] = @review.errors.full_messages.join(". ")
      render :new
    end
  end

  private

  def poro_params
    params.require(:poro).permit(:name, :owner, :description, :poro_photo)
  end
end
