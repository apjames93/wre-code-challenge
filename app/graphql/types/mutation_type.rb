module Types
  class MutationType < Types::BaseObject
    field :upsert_article, mutation: Mutations::UpsertArticle
    field :upsert_category, mutation: Mutations::UpsertCategory
    field :destroy_article, mutation: Mutations::DestroyArticle
  end
end
