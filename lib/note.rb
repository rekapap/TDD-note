# Note
class Note
  @@titles = {}
  def initialize(title, body)
    @@titles[title] = body
  end

  def self.list_titles
    @@titles.keys
  end

  def self.pick_note(title)
    body = @@titles[title]
    [title, body]
  end
end
