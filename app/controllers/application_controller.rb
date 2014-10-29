class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def force_http
    curr_controller = request.symbolized_path_parameters[:controller]
    curr_action = request.symbolized_path_parameters[:action]

    if request.ssl? && force_http_actions.include?(curr_action)
      flash.keep
      redirect_to({ controller: curr_controller, action: curr_action,
        protocol: 'http://', status: :moved_permanently })
    end
  end
end
