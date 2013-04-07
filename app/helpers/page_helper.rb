module PageHelper
  # Gallery home helper
  def get_gallery_items(limit)
    if limit.present? && limit > 0
      @get_gallery_items ||= HomeGallery.limit(limit).offset(rand(HomeGallery.count))
    else
      @get_gallery_items ||= HomeGallery.limit(36).offset(rand(HomeGallery.count))
    end
  end

  def first_tab_hg(l)
    if l.present? && l > 0
      @first_tab_hg ||= HomeGallery.where(:first_tab => 't').limit(l)
    else
      @first_tab_hg ||= HomeGallery.where(:first_tab => 't').limit(10)
    end
  end

  def second_tab_hg(l)
    if l.present? && l > 0
      @second_tab_hg ||= HomeGallery.where(:second_tab => 't').limit(l)
    else
      @second_tab_hg ||= HomeGallery.where(:second_tab => 't').limit(10)
    end

  end

  def third_tab_hg(l)
    if l.present? && l > 0
      @third_tab_hg ||= HomeGallery.where(:third_tab => 't').limit(l)
    else
      @third_tab_hg ||= HomeGallery.where(:third_tab => 't').limit(10)
    end
  end
end
