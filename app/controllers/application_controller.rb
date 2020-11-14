class ApplicationController < ActionController::Base
  include UserAgentHelper

  def set_request_variant
    binding.pry
    request.variant = :mobile if mobile?
  end
end
