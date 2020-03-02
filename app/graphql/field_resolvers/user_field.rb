# frozen_string_literal: true

module FieldResolvers
  module UserField
    def self.included(child_class)
      child_class.field :user, Types::UserType, null: true do
        description 'Get a user by ID'
        argument :id, GraphQL::Types::ID, required: true
      end
    end

    def user(args)
      User.find(args[:id])
    end
  end
end
