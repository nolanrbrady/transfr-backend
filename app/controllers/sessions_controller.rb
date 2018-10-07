class SessionsController < Devise::SessionsController

  # PATCH/PUT /users/1
  def login # was => def create
      user = User.find_by_email(sign_in_params[:email])
      if user && user.valid_password?(sign_in_params[:password])
        @current_user = user
      else
        render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
      end
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :encrypted_password, :wallet_address)
  end

end