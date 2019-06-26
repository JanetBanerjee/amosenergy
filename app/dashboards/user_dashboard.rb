require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    type: Field::String,
    phone_number: Field::String,
    address: Field::String,
    city: Field::String,
    state: Field::String,
    zip: Field::String,
    start_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    service_address: Field::String,
    same_address: Field::Boolean,
    mailing_address: Field::String,
    mailing_city: Field::String,
    mailing_state: Field::String,
    mailing_zip: Field::String,
    mobile_number: Field::String,
    work_number: Field::String,
    birthdate: Field::DateTime,
    license: Field::String,
    language: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :first_name,
    :last_name,
    :type,
    :phone_number,
    :address,
    :city,
    :state,
    :zip,
    :start_date,
    :created_at,
    :updated_at,
    :service_address,
    :same_address,
    :mailing_address,
    :mailing_city,
    :mailing_state,
    :mailing_zip,
    :mobile_number,
    :work_number,
    :birthdate,
    :license,
    :language,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :first_name,
    :last_name,
    :type,
    :phone_number,
    :address,
    :city,
    :state,
    :zip,
    :start_date,
    :service_address,
    :same_address,
    :mailing_address,
    :mailing_city,
    :mailing_state,
    :mailing_zip,
    :mobile_number,
    :work_number,
    :birthdate,
    :license,
    :language,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
