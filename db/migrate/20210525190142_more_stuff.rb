class MoreStuff < ActiveRecord::Migration[6.1]
  def change
    add_reference :monarchs, :successor, foreign_key: { to_table: :monarchs }
  end
end
