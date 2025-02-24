# frozen_string_literal: true

class ProfilesController < ApplicationController
    before_action :set_representative
    def rep_profile_params
        params.require(:representative).permit(:representative_id, :name, :ocdid,
                                               :title, :locationName, :line1, :line2, :line3, :city, :state, :zip,
                                               :photo_url, :party, :photo_url)
    end

    def index
        # for view
    end

    def new
        # default: render 'new' template
    end

    def show; end

    def destroy
        @rep = Representative.find(params[:id])
        @rep.destroy
        flash[:notice] = "Rep '#{@Representative.official.name}' deleted."
        redirect_to search_representatives_path
        # will return to search representatives page if representative profile deleted
    end

    def set_representative
        @representative = Representative.find(
            params[:representative_id]
        )
    end
end
