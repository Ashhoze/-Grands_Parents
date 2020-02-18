class GrandParentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @grand_parents = GrandParent.all
  end
end
