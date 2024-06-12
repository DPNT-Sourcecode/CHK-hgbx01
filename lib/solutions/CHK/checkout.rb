# # noinspection RubyUnusedLocalVariable

# PRICE_TABLE = {
#   A: { price: 50, special_offers: { discounts: [ { amount: 5, price: 200 }, { amount: 3, price: 130 } ] } },
#   B: { price: 30, special_offers: { discounts: [ { amount: 2, price: 45 } ] } },
#   C: { price: 20 },
#   D: { price: 15 },
#   E: { price: 40, special_offers: { gifts: [ { amount: 2, gift: :B } ] } },
# }


class Checkout
  attr_accessor %i[check skus]

  def initialize
    initialize_skus
    @check = Check.new
  end

  def checkout(skus)

    PRICE_TABLE.each do |item,  data|
      check[item] || = { total_price: 0 }
      check[item][:amount] = skus.count item.to_s

      if data.key? :special_offers
        calculate_special_offers(check)
      else
        check[item][:total_price] += data[:price] * check[item][:amount]
      end
    end

    (check.sum(&:amount) == skus.length) ? check.sum(&:total_price) : -1
  end

  private

# +------+-------+------------------------+
# | Item | Price | Special offers         |
# +------+-------+------------------------+
# | A    | 50    | 3A for 130, 5A for 200 |
# | B    | 30    | 2B for 45              |
# | C    | 20    |                        |
# | D    | 15    |                        |
# | E    | 40    | 2E get one B free      |
# +------+-------+------------------------+
  def initialize_skus
    skus = {}

    skus[:A] = Sku.new(50, [Discount.new(5, 200), Discount.new(3, 130)])
    skus[:B] = Sku.new(30, [Discount.new(2, 45)])
    skus[:C] = Sku.new(20)
    skus[:D] = Sku.new(15)
    skus[:E] = Sku.new(40, [Gift.new(2, 'B')])

    @skus = skus
  end


  def calculate_special_offers
    # final_value += (item_amount / data[:special_offers][:amount]) * data[:special_offers][:price]
    # final_value += (item_amount % data[:special_offers][:amount]) * data[:price]
  end

  def calculate_discounts
  end

  def calculate_gifts
  end
end



