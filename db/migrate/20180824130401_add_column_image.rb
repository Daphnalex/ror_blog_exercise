class AddColumnImage < ActiveRecord::Migration
  def change
    add_column :articles, :image, :text
    @article = Article.find(1)
    @article.image = "http://www.blog-in-lyon.fr/wp-content/uploads/2018/07/fond-d-ecran-coupe-du-monde-2018-football-champion-du-monde-place-des-jacobins-imgUne-blog-in-lyon.jpg"
    @article.save
    @article = Article.find(2)
    @article.image = "http://monumentsdelyon.com/content/monumentslyon/traboules.jpg"
    @article.save
    @article = Article.find(3)
    @article.image = "https://www.cybele-arts.fr/wp-content/uploads/2016/02/traboules-1140x530.jpg"
    @article.save
  end
end
