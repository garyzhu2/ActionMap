# frozen_string_literal: true

class NewsItemsController < ApplicationController
    before_action :set_representative
    before_action :set_news_item, only: %i[show]
    before_action :set_ratings_list
    before_action :set_issues_list

    def index
        @news_items = @representative.news_items
    end

    def show; end

    private
    def set_ratings_list
        @ratings_list = [1,2,3,4,5]
    end
    def set_issues_list 
        @issues_list = ["Free Speech", "Immigration", "Terrorism", "Social Security and Medicare", "Abortion", "Student Loans", "Gun Control", "Unemployment", "Climate Change", "Homelessness", "Racism", "Tax Reform", "Net Neutrality", "Religious Freedom", "Border Security", "Minimum Wage", "Equal Pay"]
    end
    def set_representative
        @representative = Representative.find(
            params[:representative_id]
        )
    end

    def set_news_item
        @news_item = NewsItem.find(params[:id])
    end
end
