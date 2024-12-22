class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :ip
      t.references :node, null: false, foreign_key: true

      t.timestamps
    end
  end
end
