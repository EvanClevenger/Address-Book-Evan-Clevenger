json.extract! email, :id, :email, :comment, :people_id, :created_at, :updated_at
json.url email_url(email, format: :json)
