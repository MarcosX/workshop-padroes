require_relative 'search_service_stub'

describe Search do
  context 'when doing regular search' do
    it 'default search by relevance and showing 15 itens per page' do
      expected_search_params = {
                        search_type: :regular,
                        product_name: 'product',
                        order_by: :relevance,
                        results_per_page: 15
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({product_name: 'product'})
    end

    it 'sorts by most recent' do
      expected_search_params = {
                        search_type: :regular,
                        product_name: 'product',
                        order_by: :most_recent,
                        results_per_page: 15
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({product_name: 'product', order_by: :most_recent})
    end

    it 'displays all results in a page' do
      expected_search_params = {
                        search_type: :regular,
                        product_name: 'product',
                        order_by: :relevance,
                        results_per_page: :all
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({product_name: 'product', results_per_page: :all})
    end

    it 'can seach by a specific category' do
      expected_search_params = {
                        search_type: :regular,
                        product_name: 'product',
                        order_by: :relevance,
                        results_per_page: 15,
                        category: 'electronic'
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({product_name: 'product', category: 'electronic'})
    end
  end

  context 'when doing by category search' do
    it 'default search by most recent, displaying 15 itens' do
      expected_search_params = {
                        search_type: :by_category,
                        product_name: 'product',
                        category: 'electronic',
                        order_by: :most_recent,
                        results_per_page: 15
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({search_type: :by_category, product_name: 'product', category: 'electronic'})
    end

    it 'uses regular search if no category is specified' do
      expected_search_params = {
                        search_type: :regular,
                        product_name: 'product',
                        order_by: :most_recent,
                        results_per_page: 15
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({search_type: :by_category, product_name: 'product', order_by: :most_recent})
    end
  end

  # TODO
  # Criar busca por promoção
  # search_type é :promotion
  # category sempre é :on_sale
  # order_by sempre é :most_recent
  context "when doing promotion search" do
   it 'default search with search_type promotion,category on_sale, order_by most_recent' do
     expected_search_params = {
                        search_type: :promotion,
                        product_name: 'product',
                        order_by: :most_recent,
                        results_per_page: 15,
                        category: :on_sale
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({search_type: :promotion, product_name: 'product'})
    end
    
    it 'default search with category on_sale' do
     expected_search_params = {
                        search_type: :promotion,
                        product_name: 'product',
                        order_by: :most_recent,
                        results_per_page: 15,
                        category: :on_sale
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({search_type: :promotion, product_name: 'product', category: :category})
    end
    
    it 'default search with order_by most_recent' do
     expected_search_params = {
                        search_type: :promotion,
                        product_name: 'product',
                        order_by: :most_recent,
                        results_per_page: 15,
                        category: :on_sale
                      }

      expect(SearchService).to receive(:do_search).with(expected_search_params).and_return([])

      Search.with({search_type: :promotion, product_name: 'product', order_by: :category})
    end
  end
end
