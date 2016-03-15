class Auto < ActiveRecord::Base
    has_many :piezas
    accepts_nested_attributes_for :piezas
    validates :marca, :modelo, presence: true
    validates :latitud, :longitud, numericality: { allow_blank: true }

    before_create do
        self.marca = "Giovanni"
        if !self.latitud or !self.longitud
            max_latitude = 90
            min_latitude = 0
            max_longitude = 90
            min_longitude = 0
            self.latitud  = rand * (max_latitude - min_latitude) + min_latitude
            self.longitud = rand * (max_longitude - min_longitude) + min_longitude
        end
  end
end
