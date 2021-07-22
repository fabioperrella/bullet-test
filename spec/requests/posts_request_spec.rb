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

  describe "GET /basic_index" do
    it 'lists all posts' do
      post1 = Post.create!
      post2 = Post.create!

      get '/posts/basic_index'

      expect(response.status).to eq(200)
    end
  end

  describe "GET /index_with_counter" do
    it 'lists all posts' do
      post1 = Post.create!
      post2 = Post.create!

      get '/posts/index_with_counter'

      expect(response.status).to eq(200)
    end
  end
end
