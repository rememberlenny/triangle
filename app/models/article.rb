class Article < ActiveRecord::Base

  def self.check_words
    @article = Article.find(1)
    article_words = @article.content.split
    check_for_location(article_words)
  end

  def self.check_for_location(words)
    words.each do |word|
      if( Location.find_by(city_name: word) != nil)
        puts "Found"
      end
    end
  end

end
