# class Check
#     attr_accessor :items

#     # def add_items(sku, amount)
#     #     items[sku.name] ||= Item.new(0, sku)
#     #     items[sku.name].amount += amount
#     # end

#     # def remove_items(sku, amount)
#     #     items[sku.name] ||= Item.new(0, sku)
#     #     current_amount = items[sku.name].amount
#     #     items[sku.name].amount = max(current_amount - amount, 0)
#     # end

#     def calculate(skus) {
#       items.each do |name, item|
#         item.calculate()
#       end
#       items.sum(&:)
#     }

#     # if sku.key? :special_offers
#     #   calculate_special_offers(check)
#     # else
#     #   check[item][:total_price] += sku[:price] * check[item][:amount]
#     # end
# end

# class Sku
#     attr_accessor %i[name base_price discounts, gifts]

#     def initialize(name, base_price, discounts, gifts)
#         @name = name
#         @base_price = base_price
#         @discounts = discounts
#         @gifts = gifts
#     end

#     def apply_special_offers(items)
#         apply_discount(items)
#         apply_gifts(items)
#     end

#     def apply_discount(items)
#         remaining_amount = item
#         discounts = discounts.sort_by { |discount| discount.amount }
#         discounts.each
#     end

#     def apply_gifts(items)
#     end
# end

# class Item
#     attr_accessor %i[amount sku total]

#     def initialize(amount, sku)
#         @amount = amount
#         @sku = sku
#         @price = 0
#     end
# end

# class SpecialOffer
#     def apply_discount(check)
#         raise 'Not implemented'
#     end

#     def apply_gifts

#     end
# end

# class Discount < SpecialOffer
#     attr_accessor %i[amount new_price]

#     def initialize(amount, new_price)
#         @amount = amount
#         @new_price = new_price
#     end

#     def apply(check)
#         new_check = check
#         return new_check
#     end
# end

# class Gift < SpecialOffer
#     attr_accessor %i[amount item_name]

#     def initialize(amount, item_name)
#         @amount = amount
#         @item_name = item_name
#     end

#     def apply(check)
#         new_check = check
#         return new_check
#     end
# end


