class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new 
    song.save
    song 
  end
  
  def self.new_by_name(song_name)
     song = self.new 
     song.name = song_name
     song 
  end
  
  def self.create_by_name(song_name)
    song = self.new 
    song.name = song_name
    song.save 
    song
  end 
  
  def self.find_by_name(song_name)
    #self.all.find {|song| song.name = song_name}
    self.all.each do |song|
      if song == song_name
        song.name
      else
        false 
      end
    end
  end
  
  
  
end







