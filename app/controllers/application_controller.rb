class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource_or_scope)
    # Redirect to home page after sign in
    root_path
  end

end
