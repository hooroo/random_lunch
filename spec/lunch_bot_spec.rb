require "lunch_bot"

describe LunchBot do
  context "when called can choose a lunch spot at random" do

    it "returns a lunch spot name" do
      name_list = LunchBot::PLACES.map { |restaurant| restaurant[:name] }
      expect(name_list).to include(LunchBot.pick)
    end

    it "does not return a spot that is closed today" do
      skip
    end
  end

  context "#is_closed?" do
    it "returns true when shop is closed" do
      allow(Time).to receive_message_chain(:now, :strftime).and_return("Monday")
      shop = LunchBot::PLACES[1]

      expect(LunchBot.is_closed?(shop)).to eq(true)
    end

    it "returns false when shop is open" do
      allow(Time).to receive_message_chain(:now, :strftime).and_return("Friday")
      shop = LunchBot::PLACES[1]

      expect(LunchBot.is_closed?(shop)).to eq(false)
    end

    it "returns false when :closed is not defined" do
      shop = LunchBot::PLACES[0]

      expect(LunchBot.is_closed?(shop)).to eq(false)
    end
  end
end
