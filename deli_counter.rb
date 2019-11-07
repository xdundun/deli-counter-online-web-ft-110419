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
    counter += 1
  }
  puts "The line is currently: " + queue.join(" ")
end

def take_a_number(people, name)
  if people.size == 0
    people.push(name)
    puts "Welcome, #{name}. You are number 1 in line."
  elsif people.size > 0
    people.push(name)
    puts "Welcome, #{name}. You are number #{people.size} in line."
  end
end

def now_serving(people)
  if people.size == 0
    puts "There is nobody waiting to be served!"
  elsif people.size > 0
    puts "Currently serving #{people[0]}."
    people.shift()
  end
end
