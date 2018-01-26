class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)

  if  @usuario.save
    redirect_to @usuario
  else
    render 'new'
 end
end

def show
  @usuario = Usuario.find(params[:id])

  end

def index
  @usuarios = Usuario.all
end




def update
  @usuario = Usuario.find(params[:id])

  if @usuario.update(usuario_params)
    redirect_to @usuario
  else
    render 'edit'
  end
end

def destroy
  @usuario = Usuario.find(params[:id])
  @usuario.destroy

  redirect_to articles_path
end
  private
  def usuario_params
    params.require(:usuario).permit(:nombres, :apellidos, :email, :telefono)
  end
end
