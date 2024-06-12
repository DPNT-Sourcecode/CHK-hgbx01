class Check
    attr_accessor :items

    # def initialize(items)
    #     @items = items
    # end

    def add_items(sku, amount)

    end

    def calculate(skus) {

    }
end

class Sku
    attr_accessor %i[base_price special_offers key]

    def initialize(key, base_price, special_offers = [])
        @key = key
        @base_price = base_price
        @special_offers = special_offers
    end
end

class Item
    attr_accessor %i[amount total_price]

    def initialize(amount, total_price)
        @amount = amount
        @total_price = total_price
    end
end

class SpecialOffer
    def apply(check)
        raise 'Not implemented'
    end
end

class Discount < SpecialOffer
    attr_accessor %i[amount new_price]

    def initialize(amount, new_price)
        @amount = amount
        @new_price = new_price
    end

    def apply(check)
        new_check = check
        return new_check
    end
end

class Gift < SpecialOffer
    attr_accessor %i[amount item_name]

    def initialize(amount, item_name)
        @amount = amount
        @item_name = item_name
    end

    def apply(check)
        new_check = check
        return new_check
    end
end