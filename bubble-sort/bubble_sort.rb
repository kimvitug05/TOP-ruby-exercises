# [Project: Bubble Sort](https://www.theodinproject.com/courses/ruby-programming/lessons/bubble-sort)

def bubble_sort(input)
    (input.length - 1).times do
        input[0..-2].each_with_index do |num, index|
            current_num = input[index]
            next_num = input[index + 1]
            if current_num > next_num
                input[index] = next_num
                input[index + 1] = current_num
            end
        end
    end
    print input
    puts
end
  
  bubble_sort([4,3,78,2,0,2])
  bubble_sort([78, 1, 76, 100, 2, 3, 4, 50, -1])
  bubble_sort([100, 1, 76, 78, 2, 3, 4, 50, -1])
  bubble_sort([5,4,3,2,1,0])