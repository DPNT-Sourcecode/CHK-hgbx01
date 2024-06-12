# # noinspection RubyUnusedLocalVariable
class Checkout
  attr_accessor :check
  # This is too complex. Maybe it is better to make add OOP...
  PRICE_TABLE = {
    A: { price: 50, special_offers: { discounts: [ { amount: 5, price: 200 }, { amount: 3, price: 130 } ] } },
    B: { price: 30, special_offers: { discounts: [ { amount: 2, price: 45 } ] } },
    C: { price: 20 },
    D: { price: 15 },
    E: { price: 40, special_offers: { gifts: [ { amount: 2, gift: :B } ] } },
  }

  def initialize

  end

  def checkout(skus)
    check = {}
    final_value = 0

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

  def calculate_special_offers
    # final_value += (item_amount / data[:special_offers][:amount]) * data[:special_offers][:price]
    # final_value += (item_amount % data[:special_offers][:amount]) * data[:price]
  end

  def calculate_discounts
  end

  def calculate_gifts
  end
end

