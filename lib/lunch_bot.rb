require 'json'

class LunchBot

  def self.pick
    get_lunch_spots.sample["name"]
  end

  def self.is_closed?(shop)
    shop["closed"].include?(today)
  end

  def self.today
    Time.now.strftime("%A")
  end

  private

  def self.get_lunch_spots
    dirname = File.dirname(__FILE__)
    filename = File.join(dirname, 'lunch_places.json')

    JSON.parse(File.read(filename))["places"]
  end
end
