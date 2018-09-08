# frozen_string_literal: true

# this is a ApplicationController
class ApplicationController < ActionController::Base
  before_action :getcategoryNav

  protect_from_forgery with: :exception

  private
  def getcategoryNav
    @categoryNav = Category.all
  end
end
