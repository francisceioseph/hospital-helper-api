class CreateExamTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_types do |t|
      t.string :exam_name
      t.string :exam_description
      t.belongs_to :exam_appointments, foreign_key: true

      t.timestamps
    end
  end
end
