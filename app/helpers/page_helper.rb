module PageHelper
  def get_gallery_items(limit)
    if limit.present?
      @get_gallery_items ||= HomeGallery.limit(limit).offset(rand(HomeGallery.count))
    else
      @get_gallery_items ||= HomeGallery.limit(36).offset(rand(HomeGallery.count))
    end
  end
end
