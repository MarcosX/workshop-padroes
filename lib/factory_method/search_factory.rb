class SearchFactory
  
  def self.create_default_params
    { results_per_page: 15 }
  end
  
  def self.by_category(params)
      return regular params if params[:category].nil?

      default_params = create_default_params
      default_params[:order_by] = :most_recent
      default_params.merge(params)
  end
  
  def self.regular(params)
    default_params = create_default_params
    params[:search_type] = :regular
    default_params[:order_by] = :relevance
    default_params.merge(params)
  end
  
  def self.promotion(params)
      default_params = create_default_params
      params[:order_by] = :most_recent
      params[:category] = :on_sale
      default_params.merge(params)
  end
end