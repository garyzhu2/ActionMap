
class Profile < ApplicationRecord

    def self.civic_api_to_rep_profile_params(rep_info)
        reps = []

        rep_info.officials.each_with_index do |official, index|
            ocdid_temp = ''
            title_temp = ''
            photo_url_temp = ''
            address_temp = ''
            party_temp = ''


            rep_info.offices.each do |office|
                if office.official_indices.include? index
                    title_temp = office.name
                    ocdid_temp = office.division_id
                    photo_url_temp = office.official.photo_url
                    address_temp = office.address_temp
                    party_temp = office.party 
                end
            end
            reps.push(rep_info)
        end
        reps
    end
end