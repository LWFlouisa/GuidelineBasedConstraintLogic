require "NeoPathfinding"

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

end
