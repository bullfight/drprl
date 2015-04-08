module Drprl
  class Document
    include DocumentBuilder::Model
    xpath "//nodes"
    attribute :posts, 'node', PostCollection
  end
end
