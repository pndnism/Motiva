# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(category: "WORD", color:"b")
Category.create(category: "LIFE", color:"g")

User.create(first_name: "daiki", last_name: "miyazaki", user_name: 'pman', mail: "p.dai.man8@gmail.com", password:"password")
User.create(first_name: "momoko", last_name: "kameoka", user_name: 'kamekame', mail: "kamekame@gmail.com", password:"password")
User.create(first_name: "hiroki", last_name: "tateno", user_name: 'ponpon', mail: "tateno@gmail.com", password:"password")

Todo.create(user_id:1, todo_content:"モデルの更新", deadline:Date.new(2021, 07, 01), category_id:1, done:0)
Todo.create(user_id:1, todo_content:"賃料履歴の更新", deadline:Date.new(2021, 07, 01), category_id:1, done:0)

Project.create(user_id: 1, project_content: 'e_rent', closed: 0)
Project.create(user_id: 1, project_content: 'portfolio', closed: 0)
Project.create(user_id: 1, project_content: 'discuss', closed: 0)

ProjectTodo.create(project_id: 1, todo_id: 1)
ProjectTodo.create(project_id: 1, todo_id: 2)