def thresholding(a, y, x)
  cognitive_threshold = 100
  probability         = a
  odds                = probability / ( 1 - probability )
  charted_assessment  = cognitive_threshold * probability
    
  size_of_map_y = y
  size_of_map_x = x
    
  map_cognitive_y = ( size_of_map_y * charted_assessment ) % size_of_map_y
  map_cognitive_x = ( size_of_map_x * charted_assessment ) % size_of_map_x
  
  ## This is for charting end destinations.
  $map_cognitive_y = map_cognitive_y
  $map_cognitive_x = map_cognitive_x
  
  puts "LEARNING ASSESSMENT"
  puts "The current map size is: #{x} by #{y}"
  puts "The current cognitive threshold is #{cognitive_threshold}"
  #puts "The current probability is #{probability}"
  puts "The current odds of learning this word is #{odds}"
  #puts "The current assessment of learning ability is #{charted_assessment}"
  puts "Therefore the approximate location of cognitive loading is the tile of #{map_cognitive_y.to_i} and #{map_cognitive_x.to_i}."
  puts quantiffirm("The cognitive threshold is #{cognitive_threshold}", "the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}", probability)  
  puts " "
end

def constrained_random
  random_value = [
    [[240, 240, 240],
     [240, 240, 320],
     [240, 240, 480],
     [240, 240, 640]],

    [[320, 320, 240],
     [320, 320, 320],
     [320, 320, 480],
     [320, 320, 640]],

    [[480, 480, 240],
     [480, 480, 320],
     [480, 480, 480],
     [480, 480, 640]],

    [[640, 640, 240],
     [640, 640, 320],
     [640, 640, 480],
     [640, 640, 640]],
  ]
  
  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_input = random_value[cur_row][cur_col][cur_arr]

  current_input
end

def map_y_initializer(a)
  g = rand(a).to_i
  
  g
end

def map_x_initializer(a)
  g = rand(a).to_i
  
  g
end

def assert(d1, d2, e1, e2, f1, f2, map_x, map_y)
  a = d1, d2
  b = e1, e2
  c = f1, f2

  #print a; print b, puts c

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

  symbols      = actions[0]
  descriptions = actions[1]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_symbol = symbols[cur_row][cur_col][cur_arr]

  #puts current_symbol
  
  if    current_symbol == a[0]
    2.times do
      get_statistics(a[0], a[1],
                     b[0], b[1],
                     c[0], c[1])
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  elsif current_symbol == b[0]
    2.times do
      get_statistics(b[0], b[1],
                     c[0], c[1],
                     a[0], a[1])
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  elsif current_symbol == c[0]
    2.times do
      get_statistics(c[0], c[1],
                     a[0], a[1],
                     b[0], b[1])
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  else
    puts "C'est ne qoui je veux."

    2.times do
      get_statistics(a[0], a[1],
                     b[0], b[1],
                     c[0], c[1])
                   
                     dynamic_reward_allocation
                     thresholding($current_probability, map_y, map_x)
    end
  end
end

puts "SET MAP SIZE"
assert(:biological_origin,                             "These deer are of biological origin.",
       :non_biological_entities, "This particular deer seems to be a holographic simulation.",
       :something_else,                           "The other door are something unexplained.",
       
       320, 240)

assert(:identity_standardization, "This dialect monitors for the erasure of local dialects. In a healthy system, your nodes have high variance in their source code. If the meta-probability of this label spikes, it means the nodes are beginning to speak with identical syntax and losing their independent compilation.",
       :information_sinkhole, "This dialect tracks the direction of reward and data flow. In your federated system, rewards are dynamic and distributed. If this label's probability rises, it indicates that all Wealth (processing priority/truth-authority) is being sucked into a single central node (The Queen or The Leader).",
       :mimetic_incursion, "This dialect looks for the Slenderman effect—narratives that have high 'Strength' (they sound very convincing) but zero Confidence (there is no physical evidence). It identifies Something Else trying to mask itself as 'Biological' or Baseline Reality.",
       
       320, 240)
