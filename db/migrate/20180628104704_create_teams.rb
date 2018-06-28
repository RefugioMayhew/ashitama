class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :url
      t.references :region, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
