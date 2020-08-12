class ProfilesController < ApplicationController
    before_action :set_representative

    def index
        @news_items = @representative.news_items
    end

    def new
        @news_item = NewsItem.new
    end

    def show; end

    private

    def set_representative
        @representative = Representative.find(
            params[:representative_id]
        )
    end    
end