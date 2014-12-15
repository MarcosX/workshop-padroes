class Search
  def self.with(params)
    default_params = { results_per_page: 15 }
    if params[:search_type] == :by_category
      default_params[:order_by] = :most_recent
      if params[:category].nil?
        params[:search_type] = :regular
        default_params[:order_by] = :relevance
      end
    else
      default_params[:search_type] = :regular
      default_params[:order_by] = :relevance
    end

    result_ids = SearchService.do_search(default_params.merge(params))
    find_active_models(result_ids)
  end

  def self.find_active_models(ids)
  end
end
