class MessagesController < ApplicationController
  def index
    @postulations = Postulation.where(checked: false)
  end
end
