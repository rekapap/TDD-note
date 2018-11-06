# NotePad
class NotePad
  def initialize
    @notes = {}
  end

  def add(title, body)
    @notes[title] = body
  end

  def list
    @notes.keys.join("\n")
  end

  def pick_note(title)
    body = @notes[title]
    "#{title}\n#{body}"
  end
end
