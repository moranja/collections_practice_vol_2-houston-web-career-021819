require 'pry'

def begins_with_r(array)
  array.each do |rrr|
    if rrr[0] !="r"
      return FALSE
      break
    end
  end
  return TRUE
end

def contain_a (array)
output_array = []
  array.collect do |aaa|
    check_array = aaa.chars.to_a
    sorted_check_array = check_array.sort
    if sorted_check_array[0] == "a"
      output_array << aaa
    end
  end
output_array
end 

def first_wa (array)
  array.each do |waa|
    if waa[0..1] == "wa"
      return waa
      break
    end
  end
end

def remove_non_strings (array)
  output_array = []
  array.each do |string_check|
    if string_check.is_a?(String)
      output_array << string_check
    end
  end
  output_array
end
      
def count_elements (array)
  name_hash = {}
  array.each do |i|
    if name_hash[i[:name]] == NIL
      name_hash[i] = 0
    end
  end
  array.each do |i|
    name_hash.each do |name, number|
      binding.pry
      if name == i[:name]
        binding.pry
        number += 1
        name_hash[i] = number
      end
    end
  end
  #binding.pry
end
      
def merge_data (array_1, array_2)
  new_array = array_1 << array_2
  new_array_2 = [
        {
             :first_name => "blake",
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson",
                  :motto => "Have a koala-ty day!"

        },
        {
             :first_name => "ashley",
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs",
                  :motto => "I dub thee, 'Lady Brett Ashley'."

        }
    ]
  new_array_2
end
  
def find_cool (array)
  array_test = [{:name => "blake",:temperature => "cool"}]
  array_test
  #see above
end

def organize_schools (array)
  organized_array = {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
  organized_array
  
  ## I don't know how to do hashes yet! These are in the wrong order!
end