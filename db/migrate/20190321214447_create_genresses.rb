class CreateGenresses < ActiveRecord::Migration
  def change
    create_table :genresses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
