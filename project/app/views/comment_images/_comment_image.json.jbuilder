json.extract! comment_image, :id, :link, :comment_id, :created_at, :updated_at
json.url comment_image_url(comment_image, format: :json)
