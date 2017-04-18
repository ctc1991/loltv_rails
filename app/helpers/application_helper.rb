module ApplicationHelper
  def view_count_format(view_count)
    view_count.to_f >= 10000 ? format("%.1f万", view_count.to_f/10000) : view_count
  end
end
