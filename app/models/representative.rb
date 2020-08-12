# frozen_string_literal: true

class Representative < ApplicationRecord
    has_many :news_items, dependent: :delete_all

    def self.civic_api_to_representative_params(rep_info)
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
            #splitted = address.split('/"/').to_s.split(',')

            # address.each do |x|
            #     remainder = address.split
            # one, two, three = address.match(/(^.*)()(.*)/i).captures
            #city = splitted[1].match(([\\/])
            rep = Representative.create!({ name: official.name, ocdid: ocdid_temp, 
                                           title: title_temp,locationName: splitted,

                                           photo_url: photo_url_temp, party: party_temp })
            reps.push(rep)
        end


        reps
    end
end
