Given(/^I am on the home page$/) do
  visit "/"
end

When(/^I click on "([^"]*)"$/) do |link|
  click_link link
end

Then(/^the current path should be "([^"]*)"$/) do |path|
  expect(current_path).to eq path
end

Then(/^I should see an inline PDF$/) do
  expect(response_headers['content-type']).to eq("application/pdf")
  expect(response_headers['content-disposition']).to eq("inline")
end

Then(/^the PDF should have the content "([^"]*)"$/) do |content|
  expect(pdf_text body).to have_content content
end

def pdf_text body
  temp_pdf = Tempfile.new('pdf')
  temp_pdf << body.force_encoding('UTF-8')
  temp_pdf.close
  temp_txt = Tempfile.new('txt')
  temp_txt.close
  `pdftotext -q #{temp_pdf.path} #{temp_txt.path}`
  File.read temp_txt.path
end
