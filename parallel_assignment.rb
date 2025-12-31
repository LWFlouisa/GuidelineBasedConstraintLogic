## Specifies specific item types declared for specific inventory.
assign_parallel("epee",                   "gris",
                "bache",                  "noir",
                "roche", "gris", "noir", "taupe")

## Creates parallel markov chains for predicting facts about said inventory.
yumekusari_f("data/inventory/cette_inventory.txt",
             "data/inventory/maisette_inventory.txt",
             "data/inventory/sinon_inventory.txt")
