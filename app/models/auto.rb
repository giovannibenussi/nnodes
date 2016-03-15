class Auto < ActiveRecord::Base
    validates :marca, :modelo, presence: true

    before_create do
        self.marca = "Giovanni"
  end
end
