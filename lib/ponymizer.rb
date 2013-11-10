# encoding: utf-8

class Ponymizer
  # to generate a non-normalized version of this list of names
  # go to http://mlp.wikia.com/wiki/List_of_ponies and run
  # [].slice.apply(document.querySelectorAll('table.wikitable tr td:first-child'))
  #   .map(function(x){ return x.innerText }).join(', ')
  NAMES = <<-RAINBOW_ENDS
  Applejack, Pinkie Pie, Fluttershy, Rainbow Dash, Rarity, Twilight Sparkle, Apple Bloom,
  Scootaloo, Sweetie Belle, Big McIntosh, Braeburn, Caramel, Mr. Carrot Cake, Mrs. Cup Cake,
  Cheerilee, Filthy Rich, Granny Smith, Ms. Harshwhinny, Hoity Toity, Mayor Mare, Ms. Peachbottom,
  Photo Finish, Sapphire Shores, Daring Do, Derpy, Lightning Dust, Flash Sentry, Pegasus royal guards,
  Soarin, Spitfire, Princess Cadance, Princess Celestia, Princess Luna, Fancy Pants, Flam,
  Flim, Joe, King Sombra, Prince Blueblood, Shining Armor, The Great and Powerful Trixie,
  Sunset Shimmer, Unicorn royal guards, Babs Seed, Diamond Tiara, Featherweight, Pipsqueak, Pound Cake,
  Pumpkin Cake, Silver Spoon, Snails, Snips, Twist, Aunt Orange, Uncle Orange, Pinkie's mom,
  Cloudy Quartz, Pinkie's dad, Igneous Rock, Granny Smith's father, Pokey Oaks, Granny Smith's mother,
  Sew 'n Sow, Stinkin' Rich, Apple Bumpkin, Apple Cider, Apple Cinnamon, Apple Cobbler, Apple Dumpling,
  Apple Fritter, Apple Honey, Apple Leaves, Apple Pie, Apple Rose, Apple Split, Apple Strudel, Apple Top,
  Auntie Applesauce, Bushel, Candy Apples, Caramel Apple, Curly Cobbler, Florina, Golden Delicious,
  Half Baked Apple, Happy Trails, Hayseed Turnip Truck, Jonagold, Lavender Fritter, Magdalena,
  Peachy Sweet, Pink Lady, Prairie Tune, Red Delicious, Red Gala, Sundowner, Wensley, Twilight's dad,
  Night Light, Twilight's mom, Twilight Velvet, Rarity's dad, Magnum, Rarity's mom, Pearl,
  Pinkie's sister, Limestone Pie, Pinkie's sister, Marble Pie, Apple Bud, Apple Crumble, Apple Flora,
  Apple Mint, Apple Squash, Liberty Belle, Red June, Sweet Tooth, Ace, Affero, All Aboard, Aloe,
  Amaranthine, Ambrosia, Amira, Apple Bottom, Apple Bread, Apple Munchies, Apple Slice, Apricot Bow,
  Baritone, Beauty Brass, Bell Perin, Belle Star, Berry Dreams, Berry Frost, Berry Icicle,
  Berryshine, Big Wig, Professor Bill Neigh, Black Stone, Blue Bonnet, Bonnie, Bottlecap, Mr. Breezy,
  Brindle Young, Burnt Oak, Caboose, Caesar, Candy Mane, Candy Twirl, Charcoal Bakes, Charlie Coal,
  Chelsea Porcelain, Cherry Berry, Cherry Fizzy, Cherry Jubilee, Cherry Strudel, Chilly Puddle,
  Chocolate Haze, Classy Clover, Clip Clop, Cloudy Haze, Cobalt, Cobalt Shade, Coconut, Concerto,
  Cormano, Cornflower, Cosmic, Creme Brulee, Crescendo, Crest Crown, Dainty Dove, Daisy, Flashy Pony,
  Dance Fever, Davenport, Doseydotes, Dosie Dough, Dry Wheat, Eiffel, Elphaba Trot, Emerald Beacon,
  Evening Star, Felix, Fiddlesticks, Film Reel, Flounder, Flurry, Forest Spirit, Frederick Horseshoepin,
  Fuzzy Slippers, G. Raff, Geri, Gingerbread, Ginger Gold, Giselle, Gizmo, Golden Harvest, Goldengrape,
  Grape Crush, Grape Delight, Green Jewel, Mr. Greenhooves, Haakim, Hard Knocks, Harry Trotter,
  Hay Fever, Haymish, Hazel Harvest, The Headless Horse, Herald, Hercules, High Style, Hippocrates,
  Dr. Hooves, Horte Cuisine, Hugh Jelly, Icy Drop, Jangles, Jeff Letrotski, Jesús Pezuña, Jim Beam,
  John Bull, Jubileena, Junebug, Karat, Kazooie, Klein, Knit Knot, Lavender Blush, Lavenderhoof,
  Lemon Chiffon, Lilac Links, Lily Valley, Lincoln, Linked Hearts, Little Po, Lotus Blossom,
  Lucky Clover, Lyrica Lilac, Majesty, Dr. Mane Goodall, Mango Juice, Marigold, Maroon Carrot,
  Masquerade, Master, Maybelline, Meadow Song, Melilot, Midnight Fun, Millie, Mint Swirl, Mjölna,
  Morton Saltworthy, Noteworthy, Nurse Redheart, Nurse Snowheart, Nurse Sweetheart, Nurse,
  enderheart, Oakey Doke, Obscurity, Octavia Melody, The Olden Pony, Oregon Trail, Orion,
  Paisley Pastel, Pampered Pearl, Parish Nandermane, Peachy Cream, Persnickety, Petunia,
  Picture Perfect, Pigpen, Pine Breeze, Pipe Down, Pish Posh, Pitch Perfect, Play Write,
  Post Haste, Powder Rouge, Pretty Vision, Promontory, Purple Haze, Purple Wave, Masseuse Pony,
  Quake, Raggedy Doctor, Ragtime, Reflective Rock, Regal Candent, Rick Shaw, Roma, Rose, Roxie,
  Royal Riff, Salt Lick, Sandy Soles, Screw Loose, Screwball, Seasong, Serena, Shamrock,
  Sheriff Silverstar, Shoeshine, Shortround, Sir Pony Moore, Sky View, Smokestack, Snappy Scoop,
  Soigne Folio, Soot Stain, Spring Flower, Spring Water, Squeaky Clean, Star Gazer, Starlight,
  Steamer, Steel Wright, Stella, Storm, Strawberry Cream, Sun Streak, Sunset Bliss, Surf, Swan Dive,
  Sweetie Drops, Swift Justice, Symphony, Theodore Donald Kerabatsos, Toffee, Tourist Trap,
  Tree Sap, Tropical Spring, Turf, Twilight Sky, Uncle Wing, Vanilla Sweets, Vera, Vigilance,
  Wacky Hair Day and Spray, Mr. Waddle, Bowling Pony, Walter, Welly, Wildwood Flower,
  William Wright, Wilma, Winter Withers, Wisp, Yooess Dee, Mr. Zippy, Agatha, Amberlocks,
  Amber Waves, Arctic Lily, Ardent, Autumn Gem, Berry Splash, Castle, Check Mate, Crystal Arrow,
  Dandy Brush, Esmeralda, Fleur de Verre, Golden Glitter, Goldilocks, Honey Tone, Honeycomb,
  Ivory, Jade, Long Jump, Night Knight, Paradise, Purple Polish, Quicksilver, Rapid Rush,
  Rose Quartz, Rubinstein, Sapphire Rose, Sugar Glass, Sunshine Splash, Toastie, Winnow Wind,
  Zirconic, Glass Slipper, Hope, Opal Bloom, Blaze, Fire Streak, Fleetfoot, High Winds,
  Lightning Streak, Misty Fly, Rapidfire, Silver Lining, Surprise, Wave Chill, Crescent Pony
  Crescent Moon, Manerick, Whiplash, Airheart, April Showers, Big Shot, Blossomforth,
  Blue October, Blueberry Muffin, Blue Skies, Bluebell, Blueberry Cloud, Bluebird Happiness,
  Bon Voyage, Brolly, Buddy, Candy Floss, Cappuccino, Luke, Chocolate Blueberry, Cinnamon Swirl,
  Cloud Break, Cloud Kicker, Cloud Showers, Cloudchaser, Crafty Crate, Cream Tangerine, Deep Blue,
  Descent, Dewdrop, Dizzy Twister, Drizzle, Dumb-Bell, Dust Devil, Electric Blue, Endless Clouds,
  Flash Bulb, Flitter, Golden Glory, Graceful Falls, Grape Soda, Great Scott, Green Gem, Helia,
  Honey Rays, Hoops, Jack Hammer, Juicy Fruit, Laurette, Lavender Skies, Lightning Bolt,
  Lime Jelly, Lucy Packard, Madden, Merry May, Midnight Strike, Milky Way, Nana Knits,
  Nightingale, Northern Lights, Opal Water, Orange Blossom, Orange Box, Parasol, Parula,
  Peppermint Crunch, Pink Cloud, Pizzelle, Prism Glider, Pumpkin Tart, Q. T. Prism, Rain Dance,
  Rainbow Drop, Rainbow Strike, Rainbowshine, Raindrops, Riverdance, Rivet, Rosewing, Sandstorm,
  Sassaflash, Score, Serenity, Sightseer, Silver Script, Silverspeed, Silverwing, Skyra,
  Slipstream, Snow Flight, Snowflake, Special Delivery, Spectrum, Spring Skies, Sprinkle Medley,
  Star Hunter, Starburst, Stardancer, Starsong / Sugar Apple, Strawberry Sunrise, Stormfeather,
  Sunburst, Sunlight, Sunny Rays, Sunstone, Doctor Whooves, Thorn, Thunderlane, Tiger Lily,
  Tin Tailor, Tracy Flash, Shutterfly, Tropical Storm, Vanilla Skies, Wild Fire, Wild Flower,
  Wing Wishes, Yo-Yo, Gumdrop, Allie Way, Amethyst Star, Apple Polish, Apple Stars, Arpeggio,
  Ballad, Banana Fluff, Black Marble, Blue Belle, Brass Blare, Bright Idea, Charm, Chocolate Sun,
  Chocolate Tail, Cinnabelle, Cold Front, Comet Tail, Crystal Clear, Diamond Mint
  Doctor Stable, Earl Grey, Eliza, Faraday, Flank Sinatra, Fleur Dis Lee, Fly Wishes,
  Gold Slipper, Graphite, Holly Dash, Hors D'oeuvre, The Inquisitor, Jet Set, Lemon Hearts,
  Lemony Gem, Lyra Heartstrings, Marey Fetlock, Maxie, Madmax, Minuette, Mochaccino,
  Monochrome Sunset, Neon Lights, Nixie, Noble Laureate, North Pole, Ocean Breeze, Orchid Dew,
  Perfect Timing, Perry Pierce, Pixie, Pokey Pierce, Ponet, Poppycock, Primrose, Pristine,
  Quick Fix, Raven, Red Rose, Rhythm, Night Shade, Rosewood Brook, Royal Ribbon, Sea Spray,
  Sea Swirl, South Pole, Spring Fresh, Star Bright, Star Dream, Sky Dream, Strawberry Lime,
  Sugarberry, Sweet Dreams, Top Notch, Twinkleshine, Upper Crust, Vance Van Vendington,
  Violet Velvet, Written Script, Amethyst Beat, Apple Bytes, Archer, Atlas, Aura, Bee Bop,
  Berry Pinch, Bloo, Blueberry Cake, Brown Sugar, Button Mash, Caramel Coffee, Checkered Flag,
  Cheery, Chip Mint, Coronet, Cotton Cloudy, Cotton Top, Cream Puff, Cyan Skies, Dinky Doo, Dipsy,
  Firelock, Fruitbasket, Grace Lightning, Green Daze, Honey Drop, Hot Wheels, Key Lime, Lance,
  Lemon Daze, Lemon Scratch, Lickety Split, Lily Dache, Mango Dash, Melody, Noi, Nursery Rhyme,
  Peachy Petal, Peachy Pie, Piña Colada, Pinkie Feather, Pomegranate, Princess Erroria,
  Purpletastic, Purpleskies, Rainy Feather, Royal Blue, Rumble, Shady Daze, Shining Star, Strike,
  Sugar Plum, Sun Glimmer, Sunny Daze, Sweet Pop, Sweet Tart, Tootsie Flute, Tornado Bolt,
  Treasure, Teacher's Pet, Truffle Shuffle, Crafty Crate, Crescent Moon, Green Gem, Helia,
  Jack Hammer, Lyra Heartstrings, Minuette, Raven, Rivet, Spectrum, Sprinkle Medley,
  Star Hunter, Sunburst, Doctor Whooves, Tin Tailor, Meadow Song,
  Twilight Sky, Goldengrape, Horte Cuisine, Lucy Packard, Master, Orion, Red Gala, Swan Dive,
  Applejack, Berry Pinch, Big McIntosh, Cheerilee, Derpy, Fluttershy, Liberty Belle, Pinkie Pie,
  Princess Erroria, Rainbow Dash, Rarity, Red June, Tornado Bolt, Twilight Sparkle,
  Prince Blue Dream, Chancellor Puddinghead, Smart Cookie, Commander Hurricane, Private Pansy,
  Princess Golden Dream, Clover the Clever, Moondancer, Princess Platinum, Star Swirl the Bearded,
  Unicorn King, Apple Brioche, Apple Brown Betty, Apple Cinnamon Crisp, Apple Tart,
  Babs Seed's big sis, Baked Apples, Bumpkin, Calamity Mane, Crystal Queen, Granny Pie,
  Mr. Kingpin, Namby-Pamby, Nana Pinkie, Thornhoof, Wild Bull Hickok
  RAINBOW_ENDS
  .split(',').map(&:strip).freeze

  def initialize(options = {})
  end

  def generate(options = {})
    options = { :size => 100 }.merge!(options)
    Array.new(options[:size]){ gimmie_a_pony! }
  end

  def gimmie_a_pony!
    NAMES.shuffle.first
  end

end