class CD

  attr_reader :title, :artist
  @@collection = []
  @@cds_by_artist = []

  def initialize attributes
    @title = attributes[:title]
    @artist = attributes[:artist]
  end

  def CD.all
    @@collection
  end

  def CD.clear
    @@collection = []
  end

  def CD.search arg
    found_cd = nil
    @@collection.each do |cd|
      if cd.title == arg
        found_cd = cd
      end
    end
    found_cd
  end

  def CD.list_by_artist artist
    @@cds_by_artist = []
    CD.all.each do |cd|
      if cd.artist == artist
        @@cds_by_artist << cd
      end
    end
    @@cds_by_artist
  end


  def save
    @@collection << self
    self
  end

end
