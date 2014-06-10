require 'rails_helper'

describe ArticlesController do
  describe 'routing' do
    it 'should routes to #index' do
      expect(:get => '/articles').to route_to('articles#index')
    end

    it 'should routes to #create' do
      expect(:post => '/articles').to route_to('articles#create')
    end

    it 'should routes to #destroy' do
      expect(:delete => '/articles/1000').to route_to('articles#destroy',{"id" => "1000"})
    end
  end
end
