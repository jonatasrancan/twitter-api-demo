module ApplicationHelper
  def handle
    @handle.include?('@') ? @handle : '@' + @handle
  end
end
