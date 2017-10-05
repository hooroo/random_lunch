class RandomLunch

  PLACES = [
    { name: "On It Burgers", type: "Burgers", closed: "" },
    { name: "Mr Scruffs", type: "Burgers", closed: "Monday" },
    { name: "Grace Darling Hotel", type: "Burgers", closed: "" },
    { name: "Huxtaburger", type: "Burgers", closed: "" },
    { name: "Le Bon Ton", type: "Burgers", closed: "" },
    { name: "Archie's All Day", type: "Burgers", closed: "" },
    { name: "Shizuku Ramen", type: "Ramen", closed: "" },
    { name: "Neko Neko Ramen", type: "Ramen", closed: "Sunday" },
    { name: "Shop Ramen", type: "Ramen", closed: "" },
    { name: "PHO Hung Vuong 2", type: "Pho", closed: "" },
    { name: "Super Bowl Pho & Bun Bo Hue", type: "Pho", closed: "" },
    { name: "Trippy Taco", type: "Mexican", closed: "" },
    { name: "Beach Burrito Fitzroy", type: "Mexican", closed: "" },
    { name: "Fonda", type: "Mexican", closed: "" },
    { name: "N.Lee Bakery", type: "Vietnamese", closed: "" },
    { name: "Cambridge Cafe", type: "Sandwiches", closed: "Sunday" },
    { name: "Po Boy Quarter", type: "Sandwiches", closed: "" },
    { name: "Jimmy Grants Fitzroy", type: "Kebabs & Souvlakis", closed: "" },
    { name: "Biggie Smalls", type: "Kebabs & Souvlakis", closed: "" },
    { name: "Aka Siro", type: "Japanese", closed: "Monday,Tuesday" },
    { name: "Hinoki Japanese Pantry", type: "Japanese", closed: "Monday" },
    { name: "Peko Peko", type: "Japanese", closed: "Sunday" },
    { name: "Mina-no-ie", type: "Japanese", closed: "Sunday,Monday" },
    { name: "Marimo Sushi", type: "Japanese", closed: "Saturday,Sunday" },
    { name: "Two Birds Cafe", type: "Cafés", closed: "" },
    { name: "Proud Mary", type: "Cafés", closed: "" },
    { name: "Square and Compass", type: "Cafés", closed: "" },
    { name: "South of Johnston", type: "Cafés", closed: "" },
    { name: "Allpress Espresso", type: "Cafés", closed: "Sunday" },
    { name: "Plug Nickel", type: "Cafés", closed: "" },
    { name: "Lemon Middle and Orange", type: "Cafés", closed: "" },
    { name: "Mr Peel Cafe", type: "Cafés", closed: "Sunday" },
    { name: "LazerPig", type: "Pizza", closed: "" },
    { name: "Kiwi (Fish and Chips)", type: "Other", closed: "" },
    { name: "Pasta Classica", type: "Other", closed: "Sunday" },
    { name: "Bowl Bowl Dumpling", type: "Other", closed: "" },
    { name: "Jinda Thai Restaurant", type: "Other", closed: "" },
    { name: "ISpicy Richmond", type: "Other", closed: "" },
  ].freeze

  def self.pick
    PLACES.sample[:name]
  end
end
