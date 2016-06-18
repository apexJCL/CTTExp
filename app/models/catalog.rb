class Catalog < ActiveRecord::Base
  has_many :articles
  validates :nombre, :desc, :fecha, :tipo_camb, presence: true
end
