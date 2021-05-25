class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string  :name
      t.integer :crew_capacity
      t.datetime :launched
      t.datetime :decomissioned
      t.text :fate
      t.references :kingdom
    end

    create_table :utterances do |t|
      t.text :uttered_text
      t.datetime :uttered_at
      t.references :monarch
    end

    create_table :kingdoms do |t|
      t.string :name
      t.references :monarch
    end

    create_table :monarches do |t|
      t.string :name
      t.datetime :accession
      t.datetime :succession
    end

    create_table :wars do |t|
      t.datetime :started_at
      t.datetime :ended_at
    end

    create_join_table :wars, :kingdoms do |t|
      t.index :war_id
      t.index :kingdom_id
    end
  end
end
