class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.string :title
      t.string :manual_link

      t.timestamps
    end
  end
end
