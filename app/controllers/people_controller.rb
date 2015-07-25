class PeopleController < ApplicationController

  def index
    @tag = Tag.find(1) #Tag.find(parms[:tag_id])
    @people = TagRecord.where(tag_id: @tag.id).map {|tr| tr.person}
  end

  def show
    @person = Person.find(params[:id])
    @person.click_rank += 1
    @person.save!
  end
end
