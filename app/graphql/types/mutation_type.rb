module Types
  class MutationType < Types::BaseObject
    field :upsert_article, mutation: Mutations::UpsertArticle
  end
end
