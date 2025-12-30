# Guildeline Based Constraint Logic
General rules about software limitations and restrictions; programs written to nudge a system in a specific direction using soft boundaries.

Guideline Based Constraint Logic is a form of constraint based programming where one specifies where a program can go, and a boundary they can't cross and giving it room to experiment.

Here the idea is to gently nudge a system toward the correct path, by making the incorrect path less rewarding or interesting. This is currently being tested in smaller systems, but will eventually develop solutions for more complex problem sets.

I like to think of it as a "Now now Mr. Kitty, don't eat the paper towel roll" type scripting language.

## Creating The Function
~~~ruby
def assert(d1, d2, e1, e2, f1, f2, map_x, map_y)
  a = [ d1, d2 ]
  b = [ e1, e2 ]
  c = [ f1, f2 ]

  print a; print b, puts c

  actions = [
    [[a[0], a[0], a[0]],
     [a[0], a[0], b[0]],
     [a[0], a[0], c[0]]],

    [[b[0], b[0], a[0]],
     [b[0], b[0], b[0]],
     [b[0], b[0], c[0]]],

    [[c[0], c[0], a[0]],
     [c[0], c[0], b[0]],
     [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]],
     [a[1], a[1], b[1]],
     [a[1], a[1], c[1]]],

    [[b[1], b[1], a[1]],
     [b[1], b[1], b[1]],
     [b[1], b[1], c[1]]],

    [[c[1], c[1], a[1]],
     [c[1], c[1], b[1]],
     [c[1], c[1], c[1]]],    
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  object == actions[cur_row][cur_col][cur_arr]

  if    object == a
    2.times do
      get_statistics(a[0], a,
                     b[0], b,
                     c[0], c)
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  elsif object == b
    2.times do
      get_statistics(b[0], b,
                     c[0], c,
                     a[0], a)
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  else
    puts "C'est ne qoui je veux."

    2.times do
      get_statistics(a[0], a,
                     b[0], b,
                     c[0], c)
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  end
end
~~~

## Usage
~~~ruby
assert(cette("pomme", "rouge"), maisette("pomme", "vert"), sinon("pomme", "rouge", "vert"), 640, 480)
~~~

## Datasets
~~~ruby
acid_serpent = [
  [ :acid_serpent, "Sinon serpent es ne acidique ou aquatique.", 0.09487368 ],
], [
  [ "The current map size is: 640 by 480",
    "The current cognitive threshold is 100",
    "The current odds of learning this word is 0.27844541038097675",
    "Therefore the approximate location of cognitive loading is the tile of 374 and 499.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 374.40000000000146 and 499.2000000000007 is largely false." ],

  [ "The current map size is: 640 by 480",
    "The current cognitive threshold is 100",
    "The current odds of learning this word is -2.3469827586206895",
    "Therefore the approximate location of cognitive loading is the tile of 115 and 153.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 115.20000000001164 and 153.60000000000582 is not quantifiable." ],

  [ "The current map size is: 480 by 640",
    "The current cognitive threshold is 100",
    "The current odds of learning this word is 0.10481816504905082",
    "Therefore the approximate location of cognitive loading is the tile of 311 and 233.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 311.91552000000047 and 233.9366399999999 is false." ],
]

## Sea Gargoyal travels from the tile of [ 268 y and 358 x ] to [ 57 y and 78 x ]
sea_gargoyal = [
  [ :sea_gargoyal, "Mais cette gargouille es ne aquatique.", 0.09487368 ],
], [
  [ "The current map size is: 640 by 480",
    "The current cognitive threshold is 100",
    "The current odds of learning this word is 0.7717930545712262",
    "Therefore the approximate location of cognitive loading is the tile of 268 and 358.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 268.8000000000029 and 358.40000000000146 is partially true." ],

  [ "The current map size is: 640 by 480",
    "The current cognitive threshold is 100",
    "The current odds of learning this word is 6.763975155279509",
    "Therefore the approximate location of cognitive loading is the tile of 57 and 76.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 57.60000000000582 and 76.80000000000291 is true." ],

  [ "The current map size is: 480 by 640",
    "The current cognitive threshold is 100",
    "The current odds of learning this word is 0.10481816504905082",
    "Therefore the approximate location of cognitive loading is the tile of 311 and 233.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 311.91552000000047 and 233.9366399999999 is false." ],
]
~~~

## Practical Examples
~~~ruby
## That
cette("porte", "nord");   that = $that[0], $that[1]

## But That
maisette("porte", "sud"); but_that = $but_that[0], $but_that[1]

## Otherwise
sinon("porte", "oest", "est")

otherwise     = $otherwise[0], $otherwise[1]
otherwise_not = $otherwise_not[0], $otherwise_not[1], $otherwise_not[2]

## Exclusive Otherwise
ouvert("data/gbcl/cette_outcome.txt",
       "Cette #{that[0]} est #{that[1]}",
       
       "data/gbcl/maisette_outcome.txt",
       "Maisette #{but_that[0]} est #{but_that[1]}",
       
       "data/gbcl/sinon_outcome.txt",
       "Sinon cette #{otherwise_not[0]} n'est #{otherwise_not[1]} ou #{otherwise_not[2]}")
~~~
