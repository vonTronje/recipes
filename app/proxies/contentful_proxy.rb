# frozen_string_literal: true

class ContentfulProxy
  def self.recipes
    client.entries(content_type: 'recipe')
  end

  def self.entry(id:)
    client.entry(id)
  end

  def self.client
    @client ||= Contentful::Client.new(
      space: ENV['CONTENTFUL_SPACE'],
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      dynamic_entries: :auto,
      raise_for_empty_fields: false
    )
  end
end
