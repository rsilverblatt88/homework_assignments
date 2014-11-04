require "pry"
n_line_stops = ['Times Square', '34th', '28th-n', '23rd-n', 'Union Square', '8th']
l_line_stops = ['8th Ave', '6th Ave', 'Union Square', '3rd Ave', '1st Ave']
six_line_stops = ['Grand Central', '33rd', '28th-six', '23rd-six', 'Union Square', 'Astor Place']

mta = {
  :n_line => n_line_stops,
  :l_line => l_line_stops,
  :six_line => six_line_stops
}



def total_stops
  n_line_stops = ['Times Square', '34th', '28th-n', '23rd-n', 'Union Square', '8th']
  l_line_stops = ['8th Ave', '6th Ave', 'Union Square', '3rd Ave', '1st Ave']
  six_line_stops = ['Grand Central', '33rd', '28th-six', '23rd-six', 'Union Square', 'Astor Place']

  mta = {
  :n_line => n_line_stops,
  :l_line => l_line_stops,
  :six_line => six_line_stops
}

  puts "Which line would you like to take? The L or the N"
  origin_line = gets.chomp.capitalize

  if origin_line == "L"
    puts l_line_stops
    puts "Which stop would you like to get on at?"
    entry_stop = gets.chomp
    entry_index = mta[:l_line].index(entry_stop)
    stops_until_us = mta[:l_line].index("Union Square") -

  elsif origin_line == "N"
    puts n_line_stops
    puts "Which stop would you like to get on at?"
    entry_stop = gets.chomp
    entry_index = n_line_stops.index(entry_stop)
  else
    "enter a correct line"
  end




  puts "Your trip has " + total_stops.abs.to_s  + " total stops"
end

total_stops
