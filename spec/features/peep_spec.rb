require 'spec_helper'

describe Peep do
  context 'Demonstration how data mapper works' do
    it 'should be created and retrieved from db' do
      expect(Peep.count).to eq(0)
      Peep.create(username: 'Maciek', title: 'My story', message: 'Once upon a time') #date: '2015-04-10T00:00:00+01:00'
      expect(Peep.count).to eq(1)
      peep = Peep.first
      expect(peep.username).to eq('Maciek')
      expect(peep.title).to eq('My story')
      expect(peep.message).to eq('Once upon a time')
      # expect(peep.date).to eq('2015-04-10T00:00:00+01:00')
      peep.destroy
      expect(Peep.count).to eq(0)
    end
  end
end