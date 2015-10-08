class Student < ActiveRecord::Base
  has_one :account, as: :accountable, dependent: :destroy
  has_many :contributions
  has_many :projects, through: :contributions
end
