class AddSchoolCourseToStudents < ActiveRecord::Migration
  def change
    add_column :students, :school, :string
    add_column :students, :course, :string
  end
end
	