module ApplicationHelper
  def page_title
    @title ? "NeoTwitter - #{@title}" : "NeoTwitter"
  end
end
