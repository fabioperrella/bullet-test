require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    it 'lists all posts' do
      post1 = Post.create!
      post2 = Post.create!

      get '/posts'

      expect(response.status).to eq(200)
    end
  end
end
