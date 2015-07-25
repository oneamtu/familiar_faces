class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @tag_records = @tag.tag_records
    @people = @tag.people.order(:click_rank)
  end
end
