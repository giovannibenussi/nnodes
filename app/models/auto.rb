class Auto < ActiveRecord::Base
    has_many :piezas
    accepts_nested_attributes_for :piezas
    validates :marca, :modelo, presence: true
    validates :latitud, :longitud, numericality: { allow_blank: true }

    before_create do
        self.marca = "Giovanni"
        if !self.latitud or !self.longitud
            # ¿Porqué estos límites?
            # Véase http://stackoverflow.com/questions/11849636/maximum-lat-and-long-bounds-for-the-world-google-maps-api-latlngbounds
            max_latitude = 85
            min_latitude = -85.05115
            max_longitude = 180
            min_longitude = -180
            self.latitud  = rand * (max_latitude - min_latitude) + min_latitude
            self.longitud = rand * (max_longitude - min_longitude) + min_longitude
        end
  end
end
