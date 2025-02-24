# frozen_string_literal: true

require 'google/apis/civicinfo_v2'

class SearchController < ApplicationController
    def search
        address = params[:address]
        service = Google::Apis::CivicinfoV2::CivicInfoService.new
        service.key = Rails.application.credentials.dig(:GOOGLE_API_KEY)
        result = service.representative_info_by_address(address: address)
        @representatives = Representative.civic_api(result)

        render 'representatives/search'
    end
end
