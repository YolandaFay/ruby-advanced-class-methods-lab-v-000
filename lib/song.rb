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
    self.all.find {|song| song.name = song_name}
  end
  
  def self.find_or_create_by_name(song_name_two)
    
    test_song = find_by_name(song_name_two)
    
    if test_song != nil 
      test_song 
    else
      create_by_name(song_name_two) 
    end
  end
  
  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end
  
  def self.destroy_all 
    self.all.clear 
  end
  
end







