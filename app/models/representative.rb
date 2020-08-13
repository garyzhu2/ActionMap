# frozen_string_literal: true

class Representative < ApplicationRecord
    has_many :news_items, dependent: :delete_all

    def self.civic_api_to_rep_params(rep_info)
        reps = []

        rep_info.officials.each_with_index do |official, index|
            ocdid_temp = ''
            title_temp = ''

            rep_info.offices.each do |office|
                if office.official_indices.include? index
                    title_temp = office.name
                    ocdid_temp = office.division_id
                end
            end
            photo_url_temp = official.photo_url
            party_temp = official.party
            address = official.address.to_s
            splitted = address.split('=').to_s.delete '\",>'
            splitted = splitted.split('\\')
            city = splitted[1]
            street = splitted[3]
            state = splitted[5]
            zip = splitted[7]

            rep = Representative.create!({ name: official.name, ocdid: ocdid_temp,
                                           title: title_temp, line1: street, city: city,
                                           state: state, zip: zip,
                                           photo_url: photo_url_temp, party: party_temp })
            reps.push(rep)
        end

        reps
    end
end
