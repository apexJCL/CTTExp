class Client < ActiveRecord::Base

  validates :nombre, :a_materno, :a_paterno, presence: true

  def nombre_completo
    "#{self.nombre} #{self.a_paterno} #{self.a_materno}"
  end

end
