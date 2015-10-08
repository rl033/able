class Project < ActiveRecord::Base
  has_many :contributions
  has_many :students, through: :contributions
  has_many :investments
  has_many :organizations, through: :investments
end
