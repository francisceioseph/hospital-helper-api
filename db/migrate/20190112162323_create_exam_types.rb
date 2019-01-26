# frozen_string_literal: true

class CreateExamTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_types do |t|
      t.string :exam_type_name
      t.string :exam_type_description
      t.belongs_to :exam_appointments

      t.timestamps
    end
  end
end
