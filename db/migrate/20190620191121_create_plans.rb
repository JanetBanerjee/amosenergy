class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.integer :provider_id
      t.string :term_length

      t.timestamps
    end
  end
end
