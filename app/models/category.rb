# frozen_string_literal: true

# this is a model category
class Category < ApplicationRecord
  has_many :images
end
