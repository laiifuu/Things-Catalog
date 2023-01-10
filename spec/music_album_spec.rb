require_relative '../classes/music_album'

describe MusicAlbum do
  context 'Testing the MusicAlbum class instantiations' do
    it 'Should be of the instance of MovieAlbum' do
      music_album = MusicAlbum.new('1997-09-05', false)
      expect(music_album).to be_instance_of MusicAlbum
    end
  end
end
