class CoursesController < ApplicationController
    def index 
        courses = Course.all 
        render json: serializer.new(courses), status: :ok
    end
    def serializer 
        CourseSerializer
    end
end