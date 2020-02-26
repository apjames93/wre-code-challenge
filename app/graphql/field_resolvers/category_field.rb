# frozen_string_literal: true

module FieldResolvers
  module CategoryField
    def self.included(child_class)
      child_class.field :category, Types::CategoryType, null: true do
        description 'gets category by id'
        argument :id, GraphQL::Types::ID, required: true
      end
    end

    def category(args)
      Category.find(args[:id])
    end
  end
end
