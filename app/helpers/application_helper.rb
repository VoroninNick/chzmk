#encoding: utf-8
module ApplicationHelper
  # MD5 Body data settings
  def hide_setting(data)
    Digest::MD5.hexdigest(data)
  end

  def sha1(data)
    Digest::SHA2.hexdigest(data)
  end


  # Pages titles
  # TODO: Rewrite code to use page.title data
  def title(page_title)
    if page_title.present?
      content_for(:title) { page_title } # Render yield
    else
      page_title = 'ЧЗМК'
      content_for(:title) { page_title } # Render yield
    end
  end

  # Def method @meta
  # TODO: Rewrite code to use page.meta data
  def meta(meta_keywords, meta_description)
    if meta_keywords.present? && meta_description.present?
      content_for(:meta_keywords) { meta_keywords }
      content_for(:meta_description) { meta_description }
    end
  end
end
