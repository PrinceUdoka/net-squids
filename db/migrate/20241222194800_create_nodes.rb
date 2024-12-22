class CreateNodes < ActiveRecord::Migration[8.0]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :ip
      t.references :network, null: false, foreign_key: true

      t.timestamps
    end
  end
end
