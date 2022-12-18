json.extract! person, :id, :suffix, :first_name, :last_name, :birtday, :comment, :created_at, :updated_at
json.url person_url(person, format: :json)
