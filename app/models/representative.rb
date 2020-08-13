# frozen_string_literal: true

class Representative < ApplicationRecord
    has_many :news_items, dependent: :delete_all

    def self.civic_api(rep_info)
        reps = []
        title_temp = ''
        ocdid_temp = ''
        rep_info.officials.each_with_index do |official, index|
            rep_info.offices.each do |office|
                if office.official_indices.include? index
                    title_temp = office.name
                    ocdid_temp = office.division_id
                end
            end
            address = official.address.to_s.split('=').to_s.delete '\",>'
            splitted = address.split('\\')
            rep = Representative.create!({ name: official.name, ocdid: ocdid_temp,
                                           title: title_temp, line1: splitted[3], city: splitted[1],
                                           state: splitted[5], zip: splitted[7],
                                           photo_url: official.photo_url, party: official.party })
            reps.push(rep)
        end
        reps
    end
end
