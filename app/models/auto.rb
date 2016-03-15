class Auto < ActiveRecord::Base
    has_many :piezas
    accepts_nested_attributes_for :piezas
    validates :marca, :modelo, presence: true
    # validates :latitud, :longitud, numericality: { allow_blank: true }
    validates :latitud, numericality: { allow_blank: true, greater_than_or_equal_to: -85.05115, less_than_or_equal_to: 85 }
    validates :longitud, numericality: { allow_blank: true, greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

    before_create do
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
