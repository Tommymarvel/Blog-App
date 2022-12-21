require 'rails_helper'

RSpec.describe 'Users routing', type: :routing do
  it 'routes to the users index' do
    expect(get: '/users').to route_to('users#index')
  end

  it 'routes to the user show' do
    expect(get: '/users/1').to route_to('users#show', id: '1')
  end

  it 'has named routes for the users resource' do
    expect(get: users_path).to be_routable
    expect(get: user_path(1)).to be_routable
  end
end
