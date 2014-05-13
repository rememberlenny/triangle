class Article < ActiveRecord::Base

  def self.check_words(text)
    @article = text
    article_words = @article.split
    return check_for_location(article_words)
  end

  def self.check_for_location(words)
    final_results = []
    words.each do |word|
      locals = Location.where{ city_name =~ "%#{word}%" }

      locals.each do |local|
         final_results = final_results.push(review_all_city_results(local, word))
      end
    end
    if(final_results != [])
      return final_results
    else
      return 'No results'
    end
  end

  def self.review_all_city_results(local, word)
    if( local != nil)
      if( local.city_name != nil)
        return_info = "Found: " + local.city_name + ", a city in " + local.subdivision_name + ", " + local.country_name
        return return_info
      end
    end
  end

  def self.capitalize_array(text)
    array = text.split(' ')
    puts array
    mapped_array = []
    array.each do |array_part|
      mapped_array = mapped_array.push(array_part.capitalize)
    end
    puts mapped_array
    final_text = mapped_array.join(' ')
    puts final_text
    return final_text
  end

  def self.search_text_for_mashape_location(text)
    uri       = URI.encode(text)
    parse_response = Unirest::get "https://webknox-text-processing.p.mashape.com/text/entities?text="+uri,
    headers: {
      "X-Mashape-Authorization" => ENV['MASHAPE_KEY']
    }
    return parse_response
  end

  def self.search_text_for_geotable_location(text)
    parse_response = check_words(text)
    return parse_response
  end

end
