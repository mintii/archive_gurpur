class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.text :name
      t.text :publisher
      t.text :developer
      t.text :platform
      t.text :notes
      t.binary :cover_art

      t.timestamps
    end
  end
end
