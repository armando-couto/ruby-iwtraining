class Logger

  def self.add_logging_tag(tag)
    define_method(:log) do |msg|
      now = Time.now.strftime("%H:%M:%S")
      STDERR.puts "#{now} - #{tag}: #{self} (#{msg})"
    end
  end
end

class Song < Logger
  add_logging_tag "Listening"
end

class Movie < Logger
  add_logging_tag "Watching"
end

song = Song.new
song.log("Rock!")

movie = Movie.new
movie.log("Ação!")