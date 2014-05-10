class ParserController < ApplicationController
  def locations
    @text = 'thetext'
    document_words = @text.split(' ')
    # Set i_word and count
    foreach document_words as document_word
      #increment i_word
      foreach countries as country
        if( country == document_word)
          check_parent_location(country)
        end
        foreach states as state
          if( state == document_word)
            check_parent_location(state)
          end
          foreach cities as city
            if( city == document_word)
              check_parent_location(city)
            end
          end
        end
      end
    end
  end

  def check_parent_location(location)
    if( city == location->type)

    else( state == location->type)

    else( country == location->type)

    end
  end
end
