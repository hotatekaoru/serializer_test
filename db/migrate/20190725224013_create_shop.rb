class CreateShop < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false, limit: 255

      t.timestamps
    end

    create_table :business_days do |t|
      t.references :shop, null: false
      t.integer :day_of_week_code, default: 0, limit: 1, null: false
      t.boolean :opened, default: true, null: false

      t.timestamps
    end

    create_table :business_hours do |t|
      t.references :business_day, null: false
      t.time :opened_at, null: false
      t.time :closed_at, null: false

      t.timestamps
    end
  end
end
