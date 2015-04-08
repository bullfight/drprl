module Drprl
  class Post
    include DocumentBuilder::Model
    xpath "node"
    attribute :title, 'Title'
    attribute :body, 'Body'
    attribute :post_date, 'Post-date', DocumentBuilder::TimeAttribute
    attribute :name, 'Name'
    attribute :published, 'Published'
  end
end
