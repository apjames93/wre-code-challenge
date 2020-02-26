module Types
  class QueryType < Types::BaseObject
    include FieldResolvers::ArticleField
    include FieldResolvers::ArticlesField
    include FieldResolvers::CategoriesField
    include FieldResolvers::CategoryField
    include FieldResolvers::UserField
    include FieldResolvers::UsersField
  end
end
