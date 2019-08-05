schedule=Hash.new
puts "Do you want to add or check a task?"
choice=gets.chomp
case choice
when "add"
  puts "Which day do you want to do the task?"
  day=gets.chomp.capitalize!
  puts "What is the task?"
  task=gets.chomp.capitalize!
  schedule[day]=task
  puts "The task was added!"
when "check"
  puts ""
else
  puts "This operation is not supported."
end

schedule.each do |day, task|
  puts "#{day}: #{task}"
end
