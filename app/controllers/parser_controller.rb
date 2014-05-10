class ParserController < ApplicationController

  def submit_text

  end

  def upload
    selection = params[:location_source]
    @text     = params[:article_content]
    uri       = URI.encode(@text)

    if selection == 'mashape'
      Article.search_text_for_mashape_location(uri)
    elseif selection == 'localgeo'
      Article.search_text_for_location(uri)
    end
  end

  # def locations
  #   @text = 'thetext'
  #   document_words = @text.split(' ')
  #   # Set i_word and count
  #     document_words.each do |document_word|
  #       #increment i_word
  #       countries.each do |country|
  #         if( country == document_word )
  #           check_parent_location(country)
  #         end
  #         states.each do |state|
  #           if( state == document_word )
  #             check_parent_location(state)
  #           end
  #           cities.each do |city|
  #             if( city == document_word )
  #               check_parent_location(city)
  #             end
  #         end
  #       end
  #     end
  #   end
  # end

  # def check_parent_location(location)
  #   if( city == location->type)

  #   else( state == location->type)

  #   else( country == location->type)

  #   end
  # end
end
