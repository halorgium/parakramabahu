class MoreStuff < ActiveRecord::Migration[6.1]
  def change
    add_reference :monarches, :successor, foreign_key: { to_table: :monarches }
  end
end
