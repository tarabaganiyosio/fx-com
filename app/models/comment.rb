class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :broker
    
    def self.support_choices
        [["★(星1つ)" , "★☆☆☆☆"],
         ["★★(星2つ)" , "★★☆☆☆"],
         ["★★★(星3つ)" , "★★★☆☆"],
         ["★★★★(星4つ)" , "★★★★☆"],
         ["★★★★★(星5つ)" , "★★★★★"]]
    end
    
    def self.design_choices
        [["★(星1つ)" , "★☆☆☆☆"],
         ["★★(星2つ)" , "★★☆☆☆"],
         ["★★★(星3つ)" , "★★★☆☆"],
         ["★★★★(星4つ)" , "★★★★☆"],
         ["★★★★★(星5つ)" , "★★★★★"]]
    end
    
    def self.feeling_choices
        [["★(星1つ)" , "★☆☆☆☆"],
         ["★★(星2つ)" , "★★☆☆☆"],
         ["★★★(星3つ)" , "★★★☆☆"],
         ["★★★★(星4つ)" , "★★★★☆"],
         ["★★★★★(星5つ)" , "★★★★★"]]
    end
    
    def self.payment_choices
        [["★(星1つ)" , "★☆☆☆☆"],
         ["★★(星2つ)" , "★★☆☆☆"],
         ["★★★(星3つ)" , "★★★☆☆"],
         ["★★★★(星4つ)" , "★★★★☆"],
         ["★★★★★(星5つ)" , "★★★★★"]]
    end
end