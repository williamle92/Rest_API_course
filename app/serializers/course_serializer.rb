class CourseSerializer
  include JSONAPI::Serializer
  attributes :name, :date, :description
end
