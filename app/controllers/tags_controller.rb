class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag_records = @tag.tag_records
  end
end
