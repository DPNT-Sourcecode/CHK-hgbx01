# noinspection RubyUnusedLocalVariable
class Checkout

  PRICE_TABLE = {
    A: { price: 50, special_offer: { amount: 3, price: 130 } },
    B: { price: 30, special_offer: { amount: 2, price: 45 } },
    C: { price: 20 },
    D: { price: 15 }
  }

  def checkout(skus)
    result = 0
    valid_chars_amount = 0

    PRICE_TABLE.each do |item,  data|
      item_amount = skus.count item.to_s

      final_value = 0
      if data.key? :special_offer
        final_value += (item_amount / data[:special_offer][:amount]) * data[:special_offer][:price]
        final_value += (item_amount % data[:special_offer][:amount]) * data[:price]
      else
        final_value += data[:price] * item_amount
      end

      valid_chars_amount += item_amount
    end
    -1
  end

end
