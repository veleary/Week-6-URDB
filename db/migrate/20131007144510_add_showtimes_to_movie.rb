class AddShowtimesToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :showtime, :string
  end
end
