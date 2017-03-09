class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_ability
    @current_ability ||= AccountAbility.new(current_account)
  end

end
