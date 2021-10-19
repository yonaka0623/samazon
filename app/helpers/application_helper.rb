module ApplicationHelper
  def resource_id_user?
    require.fullpath == "/login"
  end
end
