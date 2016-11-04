class User < ApplicationRecord
  has_secure_password

  def self.create_from_omniauth(params)
    attributes = {
      username: params['info']['name'],
      email: params['info']['email']
    }

    create(attributes)
  end

  has_many :authentications, class_name: 'UserAuthentication', dependent: :destroy
end
