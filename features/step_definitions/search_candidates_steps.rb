Given /the following representatives exist/ do |representative_table|
    representative_table.hashes.each do |representative|
        representative.create representative
    end
end

When /I search for (.*) by entering (.*) into the search field/ do |representative, address|
    # first capture group is name of representative
    # second capture group is address
    # address format subject to change
    
    # expect valid address
end
