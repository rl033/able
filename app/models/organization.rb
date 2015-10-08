class Organization < ActiveRecord::Base
  has_one :account, as: :accountable, dependent: :destroy
  has_many :investments
  has_many :projects, through: :investments
end
