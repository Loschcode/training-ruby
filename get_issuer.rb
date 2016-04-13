class CardType

  attr_accessor :card_number

  def initialize(card_number)
    @card_number = card_number.to_s
  end

  def name
    case
      when american_express?
        "AMEX"
      when discover?
        'Discover'
      when mastercard?
        'Mastercard'
      when visa?
        'VISA'
      else 
        'Unknown'
    end
  end

  private

  def card_num_length
    @card_num_length ||= card_number.to_s.size
  end

  def american_express?
    card_num_length == 15 && 
      ([*34..37].include? card_number[0..1].to_i)
  end

  def discover?
    card_num_length == 16 && 
      card_number[0..3].to_i == 6011
  end

  def mastercard?
    card_num_length == 16 && 
      ([*51..55].include? card_number[0..1].to_i)
  end

  def visa?
    (card_num_length == 15 || card_num_length) && 
      card_number[0].to_i == 4
  end

end

def getIssuer(number)
  CardType.new(number).name
end

getIssuer(4111111111111111)