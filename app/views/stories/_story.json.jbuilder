json.extract! story, :id, :title, :slug, :content, :tags, :image, :video, :audio, :articleassets, :factchecked, :proofread, :enableautopublish, :autopublishdate, :publish, :publishdate, :user_id, :created_at, :updated_at
json.url story_url(story, format: :json)
json.image url_for(story.image)
json.video url_for(story.video)
json.audio url_for(story.audio)
json.articleassets do
  json.array!(story.articleassets) do |articleasset|
    json.id articleasset.id
    json.url url_for(articleasset)
  end
end
