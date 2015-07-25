class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    if @tag.to_s == 'All'
      @people = Person.all.order(:click_rank)
    else
      @people = @tag.people.order(:click_rank)
    end
  end
end
