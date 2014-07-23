class VideosController < ApplicationController
  before_filter :authenticate_user!
  def index
      response = HTTParty.get("http://localhost:5080/openmeetings/services/UserService/getSession/openmeetings/services/UserService/getSession")
      session_id = response["getSessionResponse"]["return"]["session_id"]
#      @course_topic.update_attributes(:tok_sid => session_id)
      uri = URI.parse("http://localhost:5080")
      redirect_to uri.to_s
  end
end