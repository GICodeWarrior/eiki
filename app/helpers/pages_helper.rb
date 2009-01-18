module PagesHelper
  def render_body(page)
    body = h(page.body).gsub /\[\[[^\]]+\]\]/ do |link|
      title = link[2..-3]
      if Page.find_by_title(title).nil?
        link_to title, new_page_path(:title=>title)
      else
        link_to title, page_path(title)
      end
    end
    textilize(body)
  end
end
