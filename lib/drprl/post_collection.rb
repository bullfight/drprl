module Drprl
  class PostCollection
    include DocumentBuilder::Collection
    xpath "//nodes"
    collection :posts, "//node", Post
  end
end
