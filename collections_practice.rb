
def sort_array_asc(integers)
    #sort is assending 
    integers.sort
end

def sort_array_desc(input )
    #sort decending 
    #here swap y into x 
    input.sort{ |x, y| y <=> x}
end 

def sort_array_char_count(array)
    #sort array in assending order by string length  
    array.sort{ |x,y| x.length <=> y.length}
end 

def swap_elements(array, index, destination) 
    buffer = array[index]
    array[index] = array[destination]
    array[destination] = buffer
    return array
end 

def reverse_array(array)
    max = array.length - 1
    reversed = []
    loop do
        reversed  << array[max]
        max -= 1
        break if max < 0
    end
     return reversed 
end 

def kesha_maker(array)
    #replaces the third character of each string in array to $
    array.each{|x| x[2] = "$" }
end 

def find_a(array)

    result = []
    array.collect{|x| 
    #checking which elements start with a and then shoving them into result
        if  x.start_with?("a") 
            result << x
        end
    }
    return result
end 

def sum_array(array)
    # sum + number => array[0] + array [1] then sum + array[2]
    array.inject{ |sum, number| sum + number}
end

def add_s(array)
    array.collect.with_index{|x, index| 
    #doing nothing for second thing in array
        if index == 1
            x
        else 
            x << "s"  
        end}  
end 

