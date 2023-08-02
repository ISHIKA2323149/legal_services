class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    render 'layouts/authorized_page', alert: exception.message
  end
end
