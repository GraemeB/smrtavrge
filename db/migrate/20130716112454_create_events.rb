class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :type
      t.date :cutoff_date
      t.float :result

      t.timestamps
    end
  end
end
