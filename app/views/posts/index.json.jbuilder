json.array!(@posts) do |post|
  json.extract! post, :id, :title, :article, :user_id, :flags
  json.url post_url(post, format: :json)
end
