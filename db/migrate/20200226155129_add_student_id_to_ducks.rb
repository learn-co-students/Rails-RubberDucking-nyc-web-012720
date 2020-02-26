class AddStudentIdToDucks < ActiveRecord::Migration[5.2]
  def change
    add_reference :ducks, :student
  end
end
