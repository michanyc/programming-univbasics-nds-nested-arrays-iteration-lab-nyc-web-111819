require "pry"

def join_ingredients(src)
  pizza = []
  index = 0
  while index < src.length do
    inner = src[index]
    pizza << "I love #{inner[0]} and #{inner[1]} on my pizza"
    index += 1
  end
  pizza
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
end

def find_greater_pair(src)
    large_num = []
    index = 0
    while index < src.count do
      inner_results = []
      inner_index = 0
      while inner_index < src[index].count do
        inner_results << src[index][inner_index]
        inner_index += 1
      end
        large_num << inner_results.max
        index += 1
    end
    large_num
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
end

def total_even_pairs(src)
  total = 0
  index = 0
    while index < src.length do
        if (src[index][0] % 2 == 0) && (src[index][1] % 2 == 0)
          total += (src[index][0] + src[index][1])
        end
      index += 1
    end
    total
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
end
