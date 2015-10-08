class Student < ActiveRecord::Base
  has_one :account, as: :accountable, dependent: :destroy
end
