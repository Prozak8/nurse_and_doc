Then("I should see {string} within the {string} section") do |content, section|
    within("##{section}") {
      expect(page).to have_content content 
    }  
end

Given("the following professions exist in the database") do |table|
  table.hashes.each do |profession|
    create(:profession, profession)
  end
end