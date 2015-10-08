class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :accountable, polymorphic: true

  def name
    if accountable_id
      return accountable_type == "Student" ? accountable.first_name : accountable.name
    else
      return email
    end
  end
  
end
