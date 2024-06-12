# noinspection RubyUnusedLocalVariable
class Checkout

  PRICE_TABLE = {
    A: { price: 50, special_offers: { discounts: [ { amount: 5, price: 200 }, { amount: 3, price: 130 } ] } },
    B: { price: 30, special_offers: { discounts: [ { amount: 2, price: 45 } ] } },
    C: { price: 20 },
    D: { price: 15 },
    E: { price: 40, special_offers: { gifts: [ { amount: 2, gift: :B } ] } },
  }

  def checkout(skus)
    result = 0
    valid_chars_amount = 0
    check = {}
    final_value = 0

    PRICE_TABLE.each do |item,  data|
      check[item] || = { amount: 0, total_price: skus.count item.to_s }

      if data.key? :special_offers
        final_value += (item_amount / data[:special_offers][:amount]) * data[:special_offers][:price]
        final_value += (item_amount % data[:special_offers][:amount]) * data[:price]
      else
        final_value += data[:price] * item_amount
      end

      valid_chars_amount += item_amount
    end

    (valid_chars_amount == skus.length) ? final_value : -1
  end

  private

  def calculate_special_offers
  end

  def calculate_discounts
  end

  def calculate_gifts
  end
end





