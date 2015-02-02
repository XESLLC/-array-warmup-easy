require_relative "testing_library"

unless File.exists?(".name")
  print "Please enter your name\n"
  name = $stdin.gets.chomp
  File.open((".name"), "w") do |f|
    f.puts name
  end
end

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
  new_array = Array.new
  dogs.each do |dog|
    new_array.push (dog.length)
  end
  new_array
end

def reverse_dog_names(dogs)
  new_array = Array.new
  dogs.each do |dog|
    new_array.push (dog.reverse)
  end
  new_array
end


def first_three_dogs_with_each(dogs)
  new_array = Array.new
  count = 0
  dogs.each do |dog|
    count += 1
    if count < 4
      new_array << dog
    else
    end
  end
  new_array
end

def first_three_dogs_without_each(dogs)
  dogs.take(3)
end

def reverse_case_dog_names(dogs)
  new_array = Array.new
  dogs.each do |dog|
    new_array << dog.swapcase
  end
  new_array
end

def sum_of_all_dog_name_lengths(dogs)
  dog_length = 0
  dogs.each do |dog|
    dog_length += dog.length
  end
  dog_length
end

def dogs_with_long_names(dogs)
  check_name = Array.new
  dogs.each do |dog|
    if dog.length < 5
      check_name << false
    else
      check_name << true
    end
  end
  check_name
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80


results = []

results << check("how_many_dogs", how_many_dogs(dogs), 6)
results << check("name_lengths", name_lengths(dogs), [4, 8, 4, 6, 4, 7])
results << check("reverse_dog_names", reverse_dog_names(dogs), ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
results << check("first_three_dogs_with_each", first_three_dogs_with_each(dogs), ["Fido", "Harleigh", "Mali"])
results << check("first_three_dogs_without_each", first_three_dogs_without_each(dogs), ["Fido", "Harleigh", "Mali"])
results << check("reverse_case_dog_names", reverse_case_dog_names(dogs), ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
results << check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs), 33)
results << check("dogs_with_long_names", dogs_with_long_names(dogs), [false, true, false, true, false, true])


send_results(results)
