class Article < ActiveRecord::Base

  def self.check_words
    @article = Article.find(1)
    article_words = @article.content.split
    check_for_location(article_words)
  end

  def self.check_for_location(words)
    words.each do |word|
      locals = Location.where(city_name: word)
      locals.each do |local|
        review_all_city_results(local, word)
      end
    end
  end

  def self.review_all_city_results(local, word)
    if( local != nil)
      if( local.city_name != nil)
        puts "Found: " + word + ", a city in " + local.subdivision_name + ", " + local.country_name
      end
    end
  end

  def self.search_text_for_location(text)
    uri = URI.encode(text)
    response = Unirest::get "https://webknox-text-processing.p.mashape.com/text/entities?text="+uri,headers: {
      "X-Mashape-Authorization" => "Q62SoP3AKXnfr1ePLELTRbEUblPbD1AY"
    }
    puts response
  end

end
