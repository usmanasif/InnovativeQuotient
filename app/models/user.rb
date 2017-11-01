class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
       
  validates_presence_of :email, :password, :first_name, :last_name, :username

  has_many :businesses, dependent: :destroy
  

  def remember_me
		(super == nil) ? '1' : super
	end

	def self.connect_to_linkedin(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else
        User.create!(username:auth.info.first_name,
		                  provider:auth.provider,
		                  uid:auth.uid,
		                  email:auth.info.email,
		                  password:Devise.friendly_token[0,20],
		                  first_name: auth.info.first_name,
		                  last_name: auth.info.last_name,
		                  linkedin_hash: JSON.parse(auth.to_json)
		                )
      end

    end
  end


end
