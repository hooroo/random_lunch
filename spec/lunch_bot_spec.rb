require "lunch_bot"
require "byebug"

describe LunchBot do
  describe "#pick" do
    context "when called successfully" do
      it "returns a lunch spot name" do
        name_list = LunchBot.get_lunch_spots.map { |place| place["name"] }
        
        expect(name_list).to include(LunchBot.pick)
      end

      it "does not return a spot that is closed today" do
        skip
      end
    end
  end
  #
  # context "#is_closed?" do
  #   it "returns true when shop is closed" do
  #     allow(Time).to receive_message_chain(:now, :strftime).and_return("Monday")
  #     shop = LunchBot::PLACES[1]
  #
  #     expect(LunchBot.is_closed?(shop)).to eq(true)
  #   end
  #
  #   it "returns false when shop is open" do
  #     allow(Time).to receive_message_chain(:now, :strftime).and_return("Friday")
  #     shop = LunchBot::PLACES[1]
  #
  #     expect(LunchBot.is_closed?(shop)).to eq(false)
  #   end
  #
  #   it "returns false when :closed is not defined" do
  #     shop = LunchBot::PLACES[0]
  #
  #     expect(LunchBot.is_closed?(shop)).to eq(false)
  #   end
  # end
end
