class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string  :description, null: false

      t.timestamps(null: false)
    end
  end
end
