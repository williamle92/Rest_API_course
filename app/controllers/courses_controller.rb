class CoursesController < ApplicationController
    def index 
        courses = Course.all 
        render json: serializer.new(courses), status: :ok
    end
    #retrieve specific course
    def show
        course = Course.find(params[:id])
        render json: serializer.new(course)
    end
    def serializer 
        CourseSerializer
    end
    def create 
        course = Course.new(course_params)
        course.save!
        render json: course, status: :created 
    end
    def update
        course = Course.find(params[:id])
        course.update!(course_params)
        render json: course, status: :ok
    end
    def destroy 
        course =Course.find(params[:id])
        course.destroy
    end

    def course_params
        params.require(:data).require(:attributes).permit(:name, :date, :description)
    end

end