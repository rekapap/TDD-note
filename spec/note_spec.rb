require 'note'

describe NotePad do
  it 'can create a note with title and body' do
    NotePad.new
  end
  describe '#add_titles and #list it' do
    it 'returns the title of note' do
      notepad = NotePad.new
      notepad.add('title', 'body')
      expect(notepad.list).to eq "title"
    end

    it 'returns the title of notes' do
      notepad = NotePad.new
      notepad.add('title', 'body')
      notepad.add('title2', 'body')
      expect(notepad.list).to eq "title\ntitle2"
    end
  end

  describe '#pick_note' do
    it 'pick a note and see its title and body' do
      notepad = NotePad.new
      notepad.add('title', 'body')
      expect(notepad.pick_note('title')).to eq "title\nbody"
    end
    it 'pick a note and see its title and body' do
      notepad = NotePad.new
      notepad.add('title2', 'body2')
      expect(notepad.pick_note('title2')).to eq "title2\nbody2"
    end
  end
end
