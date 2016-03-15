class Pieza < ActiveRecord::Base
    validates :nombre, :cantidad, presence: true
end
