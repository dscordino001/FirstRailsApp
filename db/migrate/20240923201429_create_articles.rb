# to generate table in database, we need to run rails db:migrate
class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |tableObject| # t is a table object
      tableObject.string :title
      tableObject.text :description

      tableObject.timestamps # created_at and updated_at field are automatically created
    end
  end
end
