class RegistrationsController < Devise::RegistrationsController
  private

    def sign_up_params
      params.require(:employee).permit(:name, :email, :department, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:employee).permit(:name, :email, :department, :password, :password_confirmation)
    end
end
