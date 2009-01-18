module PagesHelper
  def render_body(page)
    h(page.body).gsub /\[\[[^\]]+\]\]/ do |link|
      title = link[2..-3]
      link_to title, page_path(title)
    end
  end
end
