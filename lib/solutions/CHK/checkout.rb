# noinspection RubyUnusedLocalVariable
class Checkout

  PRICE_TABLE = {
    A: { special_offer: { amount: 3, price: 130 } },
    B: { special_offer: { amount: 2, price: 45 } },
    C: {},
    D: {}
  }

  def checkout(skus)
    result = 0
    valid_chars_amount = 0

    PRICE_TABLE.each do |item,  offer|
      item_amount = skus.count item.to_s

      price = 0

      if offer.key? :special_offer
        price += (item_amount/offer[:special_offer][:amount]) * offer[:special_offer][:price]
      else
      end

      valid_chars_amount += item_amount
    end
    -1
  end

end

