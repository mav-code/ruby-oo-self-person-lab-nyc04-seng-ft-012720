# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(persons_happiness)
        @happiness = persons_happiness
        if @happiness > 10 
            @happiness = 10 
        end
        if @happiness < 0
            @happiness = 0
        end

    end

    def happiness
        @happiness
    end

    def hygiene=(persons_hygiene)
        @hygiene = persons_hygiene
        if @hygiene < 0
            @hygiene= 0
        end
        if @hygiene > 10
            @hygiene= 10
        end
    end

    def hygiene
        @hygiene
    end

    def clean?
        if @hygiene > 7
            return true 
        else 
            return false 
        end
    end 

    def happy?
        if @happiness > 7
            return true 
        else 
            return false 
        end 

    end

    def get_paid(chaching)
        @bank_account += chaching 
        return "all about the benjamins" 
    end 

    def take_bath
        self.hygiene=(@hygiene + 4)
        if @hygiene > 10
            @hygiene= 10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫" 
    end 

    def work_out
        self.hygiene=(@hygiene -3)
        if @hygiene < 0
            @hygiene= 0
        end

        self.happiness=(@happiness +2)
        if @happiness > 10 
            @happiness = 10 
        end 
        return "♪ another one bites the dust ♫"
    end 
    def call_friend(friend)
        self.happiness=(@happiness +3)
        if @happiness > 10 
            @happiness = 10 
        end 
    friend.happiness = friend.happiness + 3
    if friend.happiness > 10
        friend.happiness = 10
        end
        p "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = (@happiness - 2)
            if @happiness < 0 
                @happiness = 0
            end 
            friend.happiness = friend.happiness - 2
            if friend.happiness < 0
                friend.happiness = 0
            end
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = (@happiness + 1)
            if @happiness > 10 
                @happiness = 10
            end 
            friend.happiness = friend.happiness + 1
            if friend.happiness > 10
                friend.happiness = 10
            end
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    
    end
end 

