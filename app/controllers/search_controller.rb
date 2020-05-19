class SearchController < ApplicationController

  def index
    @members = MemberFactory.new(params[:house]).return_members
    #initiate api call SEARCH with params[:house]
  end

end
