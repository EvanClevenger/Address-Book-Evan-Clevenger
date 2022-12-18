json.extract! fullapplication, :id, :suffix, :first_name, :last_name, :SSN, :birthday, :street_address, :town, :zip_code, :state, :country, :email, :phone_number, :created_at, :updated_at
json.url fullapplication_url(fullapplication, format: :json)
