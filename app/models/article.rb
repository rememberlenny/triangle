class Article < ActiveRecord::Base

  def self.check_words
    @article = Article.find(1)
    article_words = @article.content.split
    check_for_location(article_words)
  end

  def self.check_for_location(words)
    words.each do |word|
      local = Location.find_by(city_name: word)
      if( local != nil)
        if( local.city_name != nil)
          puts "Found: " + word + ", a city in " + local.subdivision_name + ", " + local.country_name
        end
      end
    end
  end

end
