class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :service_address, :string
    add_column :users, :same_address, :boolean
    add_column :users, :mailing_address, :string
    add_column :users, :mailing_city, :string
    add_column :users, :mailing_state, :string
    add_column :users, :mailing_zip, :string
    add_column :users, :mobile_number, :string
    add_column :users, :work_number, :string
    add_column :users, :birthdate, :date
    add_column :users, :license, :string
    add_column :users, :language, :string
    add_column :plans, :esi_id, :string
    add_column :plans, :veterans, :string
    add_column :plans, :cert, :string
    add_column :plans, :term, :string
    add_column :plans, :service_type, :string
    add_column :plans, :energy_type, :string
    add_column :plans, :consultant_id, :string
    add_column :plans, :terms, :boolean
  end
end
