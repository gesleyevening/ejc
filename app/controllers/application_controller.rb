class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
<<<<<<< HEAD
  def hello
    render html: "hello, world!"
=======
  layout :set_layout

  private

  def set_layout
    devise_controller? ? 'admin' : false
>>>>>>> 9acb7009739e4dc6e7e4e2f0243074fe875ad6a6
  end
  
end
