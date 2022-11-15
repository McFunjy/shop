class Album < Product
  attr_accessor :title, :genre, :artist, :year

  class << self
    def from_file(file_path)
      lines = File.readlines(file_path, chomp: true)

      self.new(
        title: lines[0],
        artist: lines[1],
        genre: lines[2],
        year: lines[3].to_i,
        price: lines[4].to_i,
        count: lines[5].to_i
      )
    end
  end

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @artist = params[:artist]
    @genre = params[:genre]
  end

  def to_s
    "Альбом \"#{@artist}\" — #{@title}, #{@genre}, #{@year}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @artist = params[:artist] if params[:artist]
    @genre = params[:genre] if params[:genre]
  end
end
