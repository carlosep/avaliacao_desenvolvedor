class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def file_mandatory
    unless params.has_key?(:sale)
      redirect_to root_path, alert: 'Arquivo .txt obrigatório'
    end
    if params.has_key?(:sale) && params[:sale][:file].content_type != 'text/plain'
      redirect_to root_path, alert: 'Tipo inválido. Apenas arquivos .txt'
    end
  end
end
