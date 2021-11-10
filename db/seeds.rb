require 'faker'

10.times do
  article = Article.new(title: Faker::Hipster.unique.sentence,
                        content: Faker::Hipster.unique.paragraph,
                        created_at: Faker::Date.in_date_period,
                        updated_at: Faker::Date.in_date_period)

  article.save
end
