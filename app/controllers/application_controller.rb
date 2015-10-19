class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def default_serializer_options
    { root: false }
  end
end
