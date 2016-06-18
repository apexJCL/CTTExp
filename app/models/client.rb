class Client < ActiveRecord::Base

  validates :nombre, :a_materno, :a_paterno, presence: true

end
