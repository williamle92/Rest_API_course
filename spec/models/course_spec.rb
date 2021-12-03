require 'rails_helper'

RSpec.describe Course, type: :model do
  describe '#validations' do
    let (:course) { build(:course)}
    it "tests course object" do 
      expect(course).to be_valid
  end
    it "has an invalid name" do
      course.name = ''
      expect(course).not_to be_valid
      expect(course.errors[:name]).to include("can't be blank")
    end
    it "has an invalid description" do
      course.description = ''
      expect(course).not_to be_valid
      expect(course.errors[:description]).to include("can't be blank")
    end
end
end