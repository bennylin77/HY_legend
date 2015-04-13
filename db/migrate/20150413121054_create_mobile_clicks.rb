class CreateMobileClicks < ActiveRecord::Migration
  def change
    create_table :mobile_clicks do |t|
      t.integer :location

      t.timestamps
    end
  end
end
