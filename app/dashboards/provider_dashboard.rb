require "administrate/base_dashboard"

class ProviderDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    price: Field::String,
    energy_price: Field::String,
    e_plan: Field::String,
    average_rate: Field::String,
    average_e_rate: Field::String,
    low_rate: Field::String,
    med_rate: Field::String,
    high_rate: Field::String,
    base_charge: Field::String,
    term: Field::String,
    term_fee: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    user_id: Field::Number,
    description: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :price,
    :energy_price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :price,
    :energy_price,
    :e_plan,
    :average_rate,
    :average_e_rate,
    :low_rate,
    :med_rate,
    :high_rate,
    :base_charge,
    :term,
    :term_fee,
    :created_at,
    :updated_at,
    :user_id,
    :description,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :price,
    :energy_price,
    :e_plan,
    :average_rate,
    :average_e_rate,
    :low_rate,
    :med_rate,
    :high_rate,
    :base_charge,
    :term,
    :term_fee,
    :user_id,
    :description,
  ].freeze

  # Overwrite this method to customize how providers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(provider)
  #   "Provider ##{provider.id}"
  # end
end
