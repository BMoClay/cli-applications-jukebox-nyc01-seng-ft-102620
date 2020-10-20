require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  index = 0
    while index < songs.length do
    songs.each_with_index{|song, index|}
    puts "{index + 1}. #{song}"
    end
  index += 1
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  #valid_number = ((0...9) + 1).to_s
  #valid_number = user_input.to_i.between?(1,9)
  #valid_number = user_input.to_i >= 1 && user_input.to_i <= 9
  valid_number = user_input.to_i(1...9)
  binding.pry
  valid_song = songs.one?(songs[0,8])
    if user_input == valid_number
      puts "Playing #{songs[user_input.to_i - 1]}"
      binding.pry
    else user_input == valid_song
      puts "Playing #{user_input}"
    end
    puts "Invalid input, please try again"
  end

def exit_jukebox
  puts "Goodbye"
end
