require 'twilio-ruby'

class TwilioNotifier
  def initialize(order)
    @order = order
  end

  def ordered_item_titles
    @order.items.pluck(:title).to_sentence
  end

  def notify
    client.messages.create(
      from: '+18327727622',
      to: '17135042580',
      body: "Thank you for placing an order at Clamorous. Your #{ordered_item_titles} are being prepared by our expert chefs and will be delivered shortly. Your total is $#{@order.order_total_cost.round(2)}. We accept all major credit cards."
    )
  end

  private

  def client 
     @client ||= Twilio::REST::Client.new(ENV['twilio_account_sid'], ENV['twilio_auth_token'])
  end
end

