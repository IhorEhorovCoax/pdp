require 'rails_helper'

RSpec.describe PostsController do
  describe '#upload_from_nyt' do
    subject { get :upload_from_nyt }
    it 'redirect to index' do
      VCR.use_cassette 'nyt_books' do
        subject
        expect(response).to redirect_to(posts_path)
      end
    end
  end
end
