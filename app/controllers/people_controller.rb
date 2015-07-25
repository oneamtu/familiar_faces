class PeopleController < ApplicationController

  def index
    tag_id = 1 # parms[:tag_id]
    @tag = Tag.find(tag_id)
    @people = TagRecord.where(tag_id: tag_id).map {|tr| tr.person}
  end

  def show
    @person = Person.find(params[:id])
    @person.click_rank += 1
    @person.save!
  end
end
