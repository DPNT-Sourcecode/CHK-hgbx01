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

class SpecialOffer
    def apply(check)
        raise 'Not implemented'
    end
end

class Discount < SpecialOffer
    attr_accessor %i[amount new_price]

    def apply(check)
        new_check = check
        return new_check
    end
end

class Gift < SpecialOffer
    attr_accessor %i[amount item_name]

    def initialize(items)
        @items = items
    end

    def apply(check)
        new_check = check
        return new_check
    end
end