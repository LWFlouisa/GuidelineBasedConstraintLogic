require "NeoPathfinding"

## That pomme is red, but that apple is green. Otherwise apple is neither red or green. Find map placement in a 640 by 480 tilemap, and show most current factored label.
## Finally apply logical rules for quantifying uncertainty.

def fruit_example
  2.times do
    assert(:cette_pomme,            cette("pomme", "rouge"),
           :maisette_pomme,       masiette("pomme", "vert"),
           :sinon_pomme,    sinon("pomme", "rouge", "vert"),
       
           640, 480)
       
           dynamic_reward_allocation
       
           puts "#{$factored_labels}"
           thresholding($current_probability)
  end
end

def bastion_de_lune
  2.times do
    assert(:bedohabaxiros,   bedohabaxiros("John",           150,        "Ishigotos"),
           :flambemange,     flambemange("Flamekuche",  "broiled",            "oven"),
           :bastion_de_lune, bastion_de_lune("De Nord", "de Nord", "Alsace-Lorraine"),

           640, 480)

           dynamic_reward_allocation
         
           puts "#{$factored_labels}"
           thresholding($current_probability)
  end
end

bastion_de_lune; fruit_example
