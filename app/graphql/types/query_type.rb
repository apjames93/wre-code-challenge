module Types
  class QueryType < Types::BaseObject
    include FieldResolvers::ArticleField
    include FieldResolvers::ArticlesField
    include FieldResolvers::CategoriesField
    include FieldResolvers::CategoryField
    include FieldResolvers::UserField
    include FieldResolvers::UsersField

    description 'The query root of of wre_code_challenge schema'

    field :ping, String, null: true do
      description 'for testing the graphql endpoint'
    end

    def ping
      'pong'
    end
  end
end
