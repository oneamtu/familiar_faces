class PeopleController < ApplicationController

  def index
    tag_id = 1 # parms[:tag_id]
    @people = TagRecords.find(tag_id).map {|tr| tr.person}
  end

  def show
  end
end
