require "administrate/base_dashboard"

class PlanDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    provider_id: Field::Number,
    term_length: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    esi_id: Field::String,
    veterans: Field::String,
    cert: Field::String,
    term: Field::String,
    service_type: Field::String,
    energy_type: Field::String,
    consultant_id: Field::String,
    terms: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :user_id,
    :provider_id,
    :term_length,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :provider_id,
    :term_length,
    :created_at,
    :updated_at,
    :esi_id,
    :veterans,
    :cert,
    :term,
    :service_type,
    :energy_type,
    :consultant_id,
    :terms,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user_id,
    :provider_id,
    :term_length,
    :esi_id,
    :veterans,
    :cert,
    :term,
    :service_type,
    :energy_type,
    :consultant_id,
    :terms,
  ].freeze

  # Overwrite this method to customize how plans are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(plan)
  #   "Plan ##{plan.id}"
  # end
end
