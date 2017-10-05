require "random_lunch"

describe RandomLunch do
  context "when called can choose a lunch spot at random" do

    it "returns a lunch spot name" do
      name_list = RandomLunch::PLACES.map { |restaurant| restaurant[:name] }
      expect(name_list).to include(RandomLunch.pick)
    end

    it "does not return a spot that is closed today" do
      skip
    end


  end

  context "#is_closed?" do
    it "returns true when shop is closed" do
      allow(Time).to receive_message_chain(:now, :strftime).and_return("Monday")
      shop = RandomLunch::PLACES[1]

      expect(RandomLunch.is_closed?(shop)).to eq(true)
    end

    it "returns false when shop is open" do
      allow(Time).to receive_message_chain(:now, :strftime).and_return("Friday")
      shop = RandomLunch::PLACES[1]

      expect(RandomLunch.is_closed?(shop)).to eq(false)
    end

    it "returns false when :closed is not defined" do
      shop = RandomLunch::PLACES[0]

      expect(RandomLunch.is_closed?(shop)).to eq(false)
    end
  end
end
