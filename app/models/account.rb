class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  belongs_to :accountable, polymorphic: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default_profile_pic.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def display_name
    if accountable_id
      return accountable_type == "Student" ? accountable.first_name : accountable.name
    else
      return email
    end
  end

  def full_name
    return accountable_type == "Student" ? accountable.first_name + " " + accountable.last_name : accountable.name
  end

  def self.from_omniauth(auth)  
    where(provider: auth.provider, uid: auth.uid).first_or_create do |account|
      account.provider = auth.provider
      account.uid = auth.uid
      account.email = auth.info.email
      account.password = Devise.friendly_token[0,20]
      # binding.pry
      # account.save!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
  
end
