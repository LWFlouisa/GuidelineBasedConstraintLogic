require_relative "Maisettelingua/Maisetteasset.rb"

puts "SET MAP SIZE"
assert(:acid_dragon,  cette('dragone', 'acidique'),
       :sea_gargoyal, maisette('gargouille', 'aquatique'),
       :acid_serpent, sinon('serpent', 'acidique', 'aquatique'),
       
       320, 240)

puts "\nEMERGENT MAP SIZES"
assert(:acid_dragon,  cette('dragone', 'acidique'),
       :sea_gargoyal, maisette('gargouille', 'aquatique'),
       :acid_serpent, sinon('serpent', 'acidique', 'aquatique'),
       
       map_y_initializer(constrained_random), map_x_initializer(constrained_random))
