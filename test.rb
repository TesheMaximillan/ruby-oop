require "./animal.rb"
require "./dog.rb"
require "./spider.rb"
require "./owner.rb"
require "./visit.rb"
require "./vet.rb"

dog = Dog.new("black", "Rax")
spider = Spider.new(85, "Bob")

vet_maria = Vet.new("Maria", "New York")
vet_john = Vet.new("John", "San Francisco")

visit_1 = Visit.new("2017-12-22", dog, vet_maria)
visit_2 = Visit.new("2017-12-31", dog, vet_maria)

puts dog.visits.count
dog.visits.map { |visit| visit.date }
puts vet_john.visits.count
puts vet_maria.visits.count
vet_maria.visits.map { |visit| visit.animal.name }

visit_3 = Visit.new("2017-11-11", spider, vet_john)
visit_4 = Visit.new("2017-10-10", spider, vet_maria)

puts spider.visits.count
spider.visits.map { |visit| visit.date }
puts vet_john.visits.count
vet_john.visits.map { |visit| visit.animal.name }
puts vet_maria.visits.count
vet_maria.visits.map { |visit| visit.animal.name }
