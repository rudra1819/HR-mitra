# app/controllers/users/passwords_controller.rb
class Users::PasswordsController < Devise::PasswordsController
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)

    if successfully_sent?(resource)
      # Grab the token from the resource
      token = resource.reset_password_token

      # Assign instance variables used in the mailer view
      @resource = resource
      @token = token

      # Render the mailer template manually
      render template: "devise/mailer/reset_password_instructions", layout: false
    else
      respond_with(resource)
    end
  end
end
