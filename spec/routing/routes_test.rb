require 'rails_helper'
RSpec.describe 'routes version', type: :routing do
  it 'returns correct routes version' do
    expect(get: '/v1/teachers').to route_to(
      controller: 'api/v1/teachers',
      action: 'index',
      # subdomain: 'api',

    )
  end
end
