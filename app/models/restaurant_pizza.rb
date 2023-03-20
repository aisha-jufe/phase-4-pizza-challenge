class RestaurantPizza < ApplicationRecord
    belongs_to :pizza 
    belongs_to :restaurant

    validate :out_of_range 

    def out_of_range
        if price < 1 || price > 30
            errors.add(:price, "validation errors")
        end
    end
end
