module Drprl
  class Post
    include DocumentBuilder::Model
    xpath "node"
    attribute :title, 'Title'
    attribute :body, 'Body'
    attribute :post_date, 'Post-date', DocumentBuilder::TimeAttribute
    attribute :name, 'Name'
    attribute :published, 'Published'
    attribute :path, 'path'

    def slug
      path[1..-1].split('/')[1]
    end
  end
end
