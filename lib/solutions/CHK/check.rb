class Check
    attr_accessor :items

    def initialize(items)
        @items = items
    end


end

class Sku
    attr_accessor %i[base_price special_offers]

end

class Item
    attr_accessor %i[amount total_price]
end