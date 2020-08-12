class ProfilesController < ApplicationController
    before_action :set_representative
    print(@Representative.offical.name)
    def rep_profile_params
        params.require(:representative).permit(:representative_id, :name, :ocdid, :title, :address, :political_party, :photo_url)
    end
    def index
        attr_accessor :representative_id, :name, :ocdid, :title, :address, :political_party, :photo_url
    end

    def new
        # default: render 'new' template
    end

    def show; end
    def destroy
        @rep = Representative.find(params[:id])
        @rep.destroy
        flash[:notice] = "Rep '#{@Representative.offical.name}' deleted."
        redirect_to search_representatives_path
        #will return to search representatives page if representative profile deleted
    end

    private

    def set_representative
        @representative = Representative.find(
            params[:representative_id]
        )
    end 
end