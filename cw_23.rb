https://www.codewars.com/kata/525c65e51bf619685c000059/ruby

=begin
input: hsh1, hsh2
output: integer
description: hsh1 is the recipe, hsh2 is the ingredients. check how many cakes pete can bake with
the ingredients available.
algo: check how many times each value from hsh1 is contained in hsh2. select the smallest value
=end

# much better solution:
def cakes(recipe, ingredients)
  recipe.map {|k,v| ingredients[k].to_i / v}.min
end

def cakes(hsh1, hsh2)
  return 0 unless hsh1.keys.all? {|key| hsh2.include?(key) }

  hsh1 = hsh1.sort_by {|k,v| k}.to_h
  hsh2 = hsh2.sort_by {|k,v| k}.to_h

  hsh2_values = hsh2.select{|k,v| k if hsh1.key?(k)}.values
  hsh1_values = hsh1.values

  answer = []
  counter = 0
  while counter < hsh1_values.size
    answer << hsh2_values[counter] / hsh1_values[counter]
    counter += 1
  end
  answer.min
  
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},
   {"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200})#, 2)
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},
    {"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000})#,11)
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},
     {"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1})#, 1)

p cakes({"chocolate"=>9, "oil"=>19, "crumbles"=>9, "butter"=>9, "nuts"=>3}, 
    {"eggs"=>30, "chocolate"=>160, "butter"=>170, "crumbles"=>60, "milk"=>150})