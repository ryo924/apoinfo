class CheckedsController < ApplicationController

  def index
    @checkeds = Checked.all.order(id: "DESC")
  end

  def create
    Checked.create(content: params[:content])
    redirect_to action: :index
  end
end
