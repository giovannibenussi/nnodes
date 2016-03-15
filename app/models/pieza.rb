class Pieza < ActiveRecord::Base
    validates :nombre, :cantidad, presence: true
    validates :cantidad, numericality: { only_integer: true }
end
