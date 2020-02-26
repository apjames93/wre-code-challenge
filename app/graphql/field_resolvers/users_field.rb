# frozen_string_literal: true

module FieldResolvers
  module UsersField
    def self.included(child_class)
      child_class.field :user, [Types::UserType], null: true do
        description 'gets user by args username, email and admin'
        argument :username, GraphQL::Types::String, required: true
        argument :email, GraphQL::Types::String, required: true
        argument :admin, GraphQL::Types::Boolean, required: true
      end
    end

    def user(args)
      User.where(args)
    end
  end
end
