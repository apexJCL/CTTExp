class Article < ActiveRecord::Base
  belongs_to :catalog
  has_many :existences
end
