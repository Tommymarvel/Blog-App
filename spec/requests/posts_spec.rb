require 'rails_helper'

RSpec.describe 'Posts routing', type: :routing do
  it 'routes to the posts index' do
    expect(get: '/users/1/posts').to route_to('posts#index', user_id: '1')
  end

  it 'routes to the post show' do
    expect(get: '/users/1/posts/1').to route_to('posts#show', user_id: '1', id: '1')
  end

  it 'has named routes for the posts resource' do
    expect(get: user_posts_path(1)).to be_routable
    expect(get: user_post_path(1, 1)).to be_routable
  end
end
