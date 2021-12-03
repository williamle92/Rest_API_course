require 'rails_helper'

RSpec.describe CoursesController do
    describe '#index' do
        it 'returns a success response' do
            get '/courses'
            #expect response == 200
            expect(response).to have_http_status(:ok)

        end
        it 'returns a proper JSON' do
            course = create :course
            get '/courses'
            body = JSON.parse(response.body)
            expect(body).to eq(
                data: [
                    {
                    id: course.id,
                    type: 'course',
                    attributes: {
                        name: course.name,
                        date: course.date, 
                        description: course.description
                    } 
                }
            ]
            )
    end
end
end