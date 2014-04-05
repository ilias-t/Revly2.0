class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.string :message
      t.string :sound_id
      t.string :color
      t.references :user, index: true
      t.timestamps
    end
  end
end
