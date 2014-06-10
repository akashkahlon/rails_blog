require 'rails_helper'

describe CommentsController do
  describe 'routing' do
    it 'should routes to #index' do
      expect(:get => '/articles/1/comments').to route_to('comments#index',{'article_id'=> '1'})
    end
    
    it 'should routes to #destroy' do
      expect(:delete => '/articles/2/comments/3').to route_to('comments#destroy',{"article_id"=>"2","id"=>"3"})
    end
  end
end
