#!/usr/bin/env ruby

SIZE = 100
PADDING = 43 

X_ITERATIONS = 1 
Y_ITERATIONS = 9 

Y_MAX_SIZE = (SIZE * Y_ITERATIONS) + (PADDING * (Y_ITERATIONS - 1))
X_MAX_SIZE = (SIZE * X_ITERATIONS) + (PADDING * (X_ITERATIONS - 1))

X_ITERATIONS.times do |col|
  x_offset = col * (SIZE + PADDING)
  Y_ITERATIONS.times do |row|
    y_offset = row * (SIZE + PADDING)
    output_file = "#{col}_#{row}.eps"
    console = "gs -o #{output_file} -sDEVICE=epswrite -dDEVICEWIDTHPOINTS=#{X_MAX_SIZE} -dDEVICEHEIGHTPOINTS=#{Y_MAX_SIZE} -dFIXEDMEDIA -c \"#{x_offset} #{y_offset} #{SIZE} #{SIZE} rectclip\" -f 'Pictos 2.eps'"
    puts console
    `#{console}`
  end
end
