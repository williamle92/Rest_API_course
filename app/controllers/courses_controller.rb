class CoursesController < ApplicationController
    def index 
        render Course.all, status: :ok
    end
endps