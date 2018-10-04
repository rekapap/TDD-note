require 'note'

describe Note do
  it ' can create a note with title and body' do
    Note.new('the', 'body')
  end

  describe "#list_titles" do
    it 'returns the title of notes' do
      Note.new('A', 'body')
      expect(Note.list_titles).to eq ['the', 'A']
    end
  end

  describe "#pick_note" do
    it 'pick a note and see its title and body' do
      expect(Note.pick_note('the')).to eq ['the', 'body']
    end
  end
end
