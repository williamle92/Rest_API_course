require 'rails_helper'

RSpec.describe '/courses routes' do
    it 'routes to courses#index' do
        aggregate_failures do
            expect(get '/courses').to route_to('courses#index')
            expect(get('/courses/1')).to route_to('courses#show', id: '1')
        end    
    end
end
