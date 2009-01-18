module PagesHelper
  def render_body(page)
    body = h(page.body).gsub /\[\[[^\]]+\]\]/ do |link|
      title = link[2..-3]
      link_to title, Page.find_by_title(title) || new_page_path(:title=>title)
    end
    textilize(body)
  end
end
