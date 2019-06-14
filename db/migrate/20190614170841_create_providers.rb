class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :price
      t.string :energy_price
      t.string :e_plan
      t.string :average_rate
      t.string :average_e_rate
      t.string :low_rate
      t.string :med_rate
      t.string :high_rate
      t.string :base_charge
      t.string :term
      t.string :term_fee

      t.timestamps
    end
  end
end
