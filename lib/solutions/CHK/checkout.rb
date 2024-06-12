# # # noinspection RubyUnusedLocalVariable

# # PRICE_TABLE = {
# #   A: { price: 50, special_offers: { discounts: [ { amount: 5, price: 200 }, { amount: 3, price: 130 } ] } },
# #   B: { price: 30, special_offers: { discounts: [ { amount: 2, price: 45 } ] } },
# #   C: { price: 20 },
# #   D: { price: 15 },
# #   E: { price: 40, special_offers: { gifts: [ { amount: 2, gift: :B } ] } },
# # }


# class Checkout
#   attr_accessor %i[items supported_skus]

#   def initialize
#     initialize_skus
#     @items = {}
#   end

#   def checkout(input_skus)
#     supported_skus.each do |item,  sku|
#       check.add_items(sku, input_skus.count(item.to_s))
#     end

#     (check.items_amount == input_skus.length) ? check.calculate : -1
#   end

#   private

# # +------+-------+------------------------+
# # | Item | Price | Special offers         |
# # +------+-------+------------------------+
# # | A    | 50    | 3A for 130, 5A for 200 |
# # | B    | 30    | 2B for 45              |
# # | C    | 20    |                        |
# # | D    | 15    |                        |
# # | E    | 40    | 2E get one B free      |
# # +------+-------+------------------------+
#   def initialize_skus
#     skus = {}

#     skus[:A] = Sku.new(:A, 50, [Discount.new(5, 200), Discount.new(3, 130)], [])
#     skus[:B] = Sku.new(:B, 30, [Discount.new(2, 45)], [])
#     skus[:C] = Sku.new(:C, 20, [], [])
#     skus[:D] = Sku.new(:D, 15, [], [])
#     skus[:E] = Sku.new(:E, 40, [], [Gift.new(2, 'B')])

#     @supported_skus = skus
#   end

#   def add_items(sku, amount)
#     items[sku.name] ||= Item.new(0, sku)
#     items[sku.name].amount += amount
#   end

#   def remove_items(sku, amount)
#       items[sku.name] ||= Item.new(0, sku)
#       current_amount = items[sku.name].amount
#       items[sku.name].amount = max(current_amount - amount, 0)
#   end

#   def calculate_total
#     items.each do |name, item|
#       item.sku.apply_special_offers(items)
#     end

#     items.sum(&:total)

#     # final_value += (item_amount / sku[:special_offers][:amount]) * sku[:special_offers][:price]
#     # final_value += (item_amount % sku[:special_offers][:amount]) * sku[:price]
#   end
# end
