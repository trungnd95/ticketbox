module EventsHelper
  def header_background_image_url
    "https://az810058.vo.msecnd.net/site/global/Content/img/home-search-bg-0#{rand(6)}.jpg"
  end

  def selected_region object, region_id
    'selected' if object.venue && object.venue.region_id == region_id
  end

  def venue_value object, atr
    object.venue.nil? ? '' : object.venue[atr]
  end
end
