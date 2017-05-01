class Bottles
    def verse(bottles) 
        #capitalize Uppercase first letter to words 
        "#{how_many_bottles(bottles).capitalize} of beer on the wall, #{how_many_bottles(bottles)} of beer.\n#{do_what(bottles)}, #{how_many_bottles(bottles - 1)} of beer on the wall.\n"
    end

    def verses(first, last)
        #downTo only numbers - equivalence "for" 
        #map -> Enumerable equivalence each 
        first.downto(last).map { |bottles| verse(bottles)}.join("\n")
    end

    def song
        verses(99, 0)
    end

    private
    
    def do_what(bottles)
        return bottles < 1 ? 'Go to the store and buy some more' : "Take #{what(bottles)} down and pass it around"
    end

    def what(bottles)
        return bottles == 1 ? 'it' : 'one'
    end

    def how_many_bottles(bottles)
        case bottles 
        when -1
            return '99 bottles'
        when 0
            return 'no more bottles'
        when 1
            return "#{bottles} bottle"
        else
            return "#{bottles} bottles"
        end
    end
end 