require 'rails_helper'

RSpec.describe '/courses routes' do
    it 'routes to courses#index' do 
        expect(get '/courses').to route_to('courses#index')
        expect(get '/courses?page[number]=3').to route_to('courses#index', page: {'number':3})
    end
end
