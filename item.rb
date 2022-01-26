require 'date'

# Item class
class Item
  def initialize(id:, date:)
    @id = id
    @date = date
  end

  def add_genre(genre_obj)
    @genre = genre_obj
  end

  def add_author(author_obj)
    @author = author_obj
  end

  def add_source(source_obj)
    @source = source_obj
  end

  def add_label(label_obj)
    @label = label_obj
  end

  def can_be_archived?
    now = Date.today
    diff = (now - Date.parse(@date)).to_i
    (diff / 365.25).to_i > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
