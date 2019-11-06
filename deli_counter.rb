# Write your code here.
def line(people)
  if people.size == 0
    puts "The line is currently empty."
    return
  end

  queue = []
  counter = 0
  people.each { |names|
    queue << "#{counter + 1}. #{names}"
  #  puts "The line is currently: #{counter}: #{names} "
    counter += 1
  }
  puts "The line is currently: " + queue.join(" ")
end
