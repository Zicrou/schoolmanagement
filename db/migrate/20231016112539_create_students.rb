class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :nom
      t.string :prenom

      t.timestamps
    end
  end
end
