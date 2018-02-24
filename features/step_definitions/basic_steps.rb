Given("I click on {string}") do |link_text|
  click_link_or_button link_text
end

Then("I shold see {string}") do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end
