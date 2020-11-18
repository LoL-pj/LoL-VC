class ApplicationController < ActionController::Base
  include UserAgentHelper

  def set_request_variant
    request.variant = :mobile if mobile?
  end
end
