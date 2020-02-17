class GrandParentsController < ApplicationController
  def index
    @grand_parents = GrandParent.all
  end
end
