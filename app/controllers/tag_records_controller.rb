class TagRecordsController < ApplicationController

  def index
    @tag_records = TagRecord.where(tag_id: params[:tag_id])
  end

  def show
  end
end
