module UserAgentHelper
  def mobile?
    request.parameters[:force_mobile] || user_agent.mobile?
  end

  def user_agent
    binding.pry
    @user_agent ||= UserAgent.parse(user_agent_string)
  end

  def user_agent_string
    request.env['HTTP_USER_AGENT']
  end
end