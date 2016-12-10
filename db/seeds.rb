# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

10.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'news', league: 'apl', picture: File.open(Rails.root.join('seed_img.jpg')))
end
10.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'news', league: 'laliga', picture: File.open(Rails.root.join('seed_img.jpg')))
end
10.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'news', league: 'seria-a', picture: File.open(Rails.root.join('seed_img.jpg')))
end
10.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'news', league: 'bundesliga', picture: File.open(Rails.root.join('seed_img.jpg')))
end
10.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'news', league: 'chempions-league', picture: File.open(Rails.root.join('seed_img.jpg')))
end

5.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'articles', league: 'apl', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'articles', league: 'laliga', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'articles', league: 'seria-a', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'articles', league: 'bundesliga', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Article.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, molestias.', summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus optio similique minima deserunt magnam sit aspernatur, pariatur unde asperiores fugiat.', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur ratione iste maxime deleniti, esse voluptatum optio, earum, quibusdam dolor excepturi dolorem a quidem fugiat asperiores. Molestiae quis omnis laborum dicta.', category: 'articles', league: 'chempions-league', picture: File.open(Rails.root.join('seed_img.jpg')))
end

5.times do
  Video.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, autem.', code: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-NSvbGxzpKk" frameborder="0" allowfullscreen></iframe>', league: 'apl', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Video.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, autem.', code: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-NSvbGxzpKk" frameborder="0" allowfullscreen></iframe>', league: 'laliga', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Video.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, autem.', code: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-NSvbGxzpKk" frameborder="0" allowfullscreen></iframe>', league: 'seria-a', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Video.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, autem.', code: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-NSvbGxzpKk" frameborder="0" allowfullscreen></iframe>', league: 'bundesliga', picture: File.open(Rails.root.join('seed_img.jpg')))
end
5.times do
  Video.create!(title: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, autem.', code: '<iframe width="560" height="315" src="https://www.youtube.com/embed/-NSvbGxzpKk" frameborder="0" allowfullscreen></iframe>', league: 'chempions-league', picture: File.open(Rails.root.join('seed_img.jpg')))
end