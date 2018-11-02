Given("I am on the hospital page") do
  visit hospitals_path
end

Then("I should see {string} within the {string} section") do |content, section|
    within("##{section}") {
      expect(page).to have_content content 
    }  
end

Given("the following jobs exist in the database") do |table|
  table.hashes.each do |job_hash|
    profession = 
    create(:profession, profession)
  end
end

Then("stop") do
  binding.pry
end