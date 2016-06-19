class Article < ActiveRecord::Base
  belongs_to :catalog
  has_many :existences

  def precio_formateado
    "$#{self.prcio_unit} #{self.moneda_art}"
  end
end
