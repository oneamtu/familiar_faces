class PeopleController < ApplicationController

  def show
    @person = Person.find(params[:id])
    @person.click_rank += 1
    @person.save!
  end
end
