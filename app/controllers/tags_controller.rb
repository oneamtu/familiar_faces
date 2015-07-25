class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])

    if @tag.to_s == 'All People'
      @people = Person.all.order(click_rank: :desc)
    else
      @people = @tag.people.order(click_rank: :desc)
    end
  end
end
