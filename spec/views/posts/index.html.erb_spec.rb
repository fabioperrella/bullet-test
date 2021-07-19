require 'rails_helper'

describe "posts/index.html.erb" do
  it 'lists all posts' do
    post1 = Post.create!(name: 'post1')
    post2 = Post.create!(name: 'post2')

    assign(:posts, [post1, post2])

    render

    expect(rendered).to include('post1')
    expect(rendered).to include('post2')
  end
end
