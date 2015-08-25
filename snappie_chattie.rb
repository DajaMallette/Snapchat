class Snappie_chattie
  attr_accessor :password, :points, :best_friends, :streak, :pics, :num_friends
  attr_reader :username

  def initialize
    puts "Please enter a username."
      username= gets.chomp
    puts "Please enter a password."
      password= gets.chomp
    puts "Username: #{username} \nPassword: #{password}"
    @pics = []
  end

  def add_friends
    @num_friends = ["Daja", "Avni", "Sara"]
    puts "Enter the username of a friend:"
      friend = gets.chomp
    @num_friends.push(friend)
    puts "You have #{@num_friends.count} friends."
  end

  def add_pics
    puts "Enter a message."
      message = gets.chomp
    puts "Enter the number of the friend you would like to send it to"
    @num_friends.each do |friend|
      puts "#{@num_friends.index(friend) +1} #{friend}"
    end
    friend_index_plusone = gets.chomp.to_i
    if @num_friends [friend_index_plusone -1]
      puts "'#{message}' was sent to #{@num_friends [friend_index_plusone -1]}"
      else
        puts "That is not a friend on your list."
      end
    end

end
user1 = Snappie_chattie.new
puts user1.username
puts user1.add_friends
puts user1.add_pics
puts "Thank you for using Snappie Chattie and have a great day."
