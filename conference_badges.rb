require "pry"
def badge_maker(name)
  "Hello, my name is #{name}."
end

# from test - array for the attendees ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
def batch_badge_creator(attendees)
  attendees.collect do |name|
    badge_maker(name)
#    "Hello, my name is #{name}."  # don't think I need this
  end
end

def assign_rooms(attendees)
  attendees.each_with_index.collect do |name, index|
    room_number = index + 1

    "Hello, #{name}! You'll be assigned to room #{room_number}!"
  end
end
binding.pry

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room_assignments|
    puts room_assignments
  end
end
