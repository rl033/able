class Project < ActiveRecord::Base
  has_many :contributions
  has_many :students, through: :contributions
  has_many :investments
  has_many :organizations, through: :investments
  has_many :project_images, :dependent => :destroy

  has_attached_file :icon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default_project_pic.png"
  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/

  accepts_nested_attributes_for :project_images
end
