module Types
  class MutationType < Types::BaseObject
    field :upsert_article, mutation: Mutations::UpsertArticle
    field :upsert_category, mutation: Mutations::UpsertCategory
  end
end
