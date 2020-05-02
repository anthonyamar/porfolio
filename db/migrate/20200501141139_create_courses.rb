class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :contentful_id, null: false
      t.string :slug, null: false
      
      t.timestamps
    end
  end
end
