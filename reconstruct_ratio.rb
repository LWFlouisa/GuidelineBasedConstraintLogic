def reconstruct(a, b, c)
  a = a.to_f
  b = b.to_f
  c = c.to_f

  a + b + c
end

def find_loss_ratio(ratio)
  upper_bound = 1.0 / ratio
  lower_bound = 1.0 - upper_bound
  
  lost_data   = ratio - ( 1.0 / ratio )
  
  "If the upper bound is #{upper_bound} and the lower bound is #{lower_bound} then #{lost_data} blends into the next pie chart."
end
