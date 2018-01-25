class UsuariosController < ApplicationController
  def new
  end

  def create
    render plain: params[:usuario].inspect
  end
end
