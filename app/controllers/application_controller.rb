class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :set_time_zone


  def set_locale
    if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym)
      session[:locale] = params[:locale]
    end
    I18n.locale = session[:locale] || I18n.default_locale
  end

  def set_time_zone
    if current_user && current_user.time_zone
      Time.zone = current_user.time_zone
    end
  end
end
