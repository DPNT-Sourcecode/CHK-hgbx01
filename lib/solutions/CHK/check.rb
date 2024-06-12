class Check
    attr_accessor :items

    # def initialize(items)
    #     @items = items
    # end

    def add_items(sku, amount)
        items[sku.name] ||= CheckEntry.new(0, sku)
        items[sku.name].amount += amount
    end

    def remove_items(sku, amount)
        items[sku.name] ||= CheckEntry.new(0, sku)
        current_amount = items[sku.name].amount
        items[sku.name].amount = max(current_amount - amount, 0)
    end

    def items_amount
        items.sum(&:amount)
    end

    def calculate(skus) {
      items.sum(&:)
    }

    # if sku.key? :special_offers
    #   calculate_special_offers(check)
    # else
    #   check[item][:total_price] += sku[:price] * check[item][:amount]
    # end
end

class Sku
    attr_accessor %i[name base_price special_offers]

    def initialize(name, base_price, special_offers = [])
        @name = name
        @base_price = base_price
        @special_offers = special_offers
    end

    def apply_special_offer(amount)
    end
end

class CheckEntry
    attr_accessor %i[amount sku]

    def initialize(amount, sku)
        @amount = amount
        @sku = sku
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

