class CreateDesktopClicks < ActiveRecord::Migration
  def change
    create_table :desktop_clicks do |t|
      t.integer :location

      t.timestamps
    end
  end
end
