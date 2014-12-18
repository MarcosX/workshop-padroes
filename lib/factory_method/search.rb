class Search
  def self.with(params)
    if params[:search_type] == :by_category
      default_params = SearchFactory.by_category params
    elsif params[:search_type] == :promotion
      default_params = SearchFactory.promotion params
    else
      default_params = SearchFactory.regular params
    end

    result_ids = SearchService.do_search(default_params)
    find_active_models(result_ids)
  end

  def self.find_active_models(ids)
  end
end
