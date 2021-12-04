require 'rails_helper'

RSpec.describe CoursesController do
    describe '#index' do
        it 'returns a success response' do
            get '/courses'
            #expect response == 200
            expect(response).to have_http_status(:ok)
        end
    end

        it 'returns a proper JSON' do
            course = create :course
            get '/courses'
            expected =json_data.first
            aggregate_failures do
                expect(json_data.length).to eq(1)
                expected = json_data.first
                expect(expected[:id]).to eq(course.id.to_s)
                expect(expected[:type]).to eq('course')
                expect(expected[:attributes]). to eq(
                    name: course.name,
                    date: '2021-03-12', 
                    description: course.description
                )
        end
    end
end
