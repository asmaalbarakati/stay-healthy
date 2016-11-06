class PagesController < ApplicationController

    def home
    end 
    
    def recipes
    end 
    
    def massCalculate
    end 
    
    def tips
        @client = Twitter::REST::Client.new do |config|
          config.consumer_key        = "I5jbS02qrIAiQEcpQ2IIzFC9h"
          config.consumer_secret     = "3vOjGmPw0F10zVN72duq7EBQcYXnJfHd1gFLKNXwOyrufMBy2e"
          config.access_token        = "246905783-wXvYsLCswxCohxWV02Fj8HnCPzNsZbKeFLRvcnrT"
          config.access_token_secret = "qipQqwGamiQcj8iDogasVZWbse4lMFeM5t93xyx3eGDux"
        end
        @tweets=@client.search('healthytip', result_type: "recent").take(10).collect;
    end  
    
    def bmiResult
        @high = params[:h].to_f;
        @bulk = params[:w].to_f;
        @yourbmi = "%.1f" % (@bulk / (@high * @high));
    end    

end