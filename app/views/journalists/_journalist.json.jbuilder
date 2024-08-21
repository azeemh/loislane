json.extract! journalist, :id, :name, :bio, :is_editor, :user_id, :created_at, :updated_at
json.url journalist_url(journalist, format: :json)
