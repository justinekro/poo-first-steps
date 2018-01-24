# =========================== Class Orange Tree Orchard ==================================================

class OrangeTreeOrchard

$trees = 0
$fruits = 0
$average = 0

  def self.count
  puts "There are #{$trees} trees in the orchard!"
  end

  def self.number_of_fruits
  puts "There are #{$fruits} fruits in total in the orchard"
  end

# =========================== Class Orange Tree (inside the 1st) ==================================================

class Orange_tree
  attr_accessor :age, :height

# Initialise l'âge et le nb d'oranges à zéro, la taille au nb saisi
  def initialize(height)
  @height = height
  @age = 0
  @orange = 0
  puts "Your baby orange tree is not even one year old and measures #{@height} meters, how tall!"  
  $trees += 1 # Il y a un arbre de plus dans le Orchard  
  end

# Renvoie la taille de l'orange tree
  def height
  puts "Your orange tree now measures #{@height} meters, he has grown bigger!"
  end 

# Fait passer une année à l'orange tree
  def one_year_passes
  @age += 1
    
# Si il est agé de puis de 50 ans, il meurt
    if @age > 50
  	puts "Your tree has died :("
  	@height=0

    else
    @orange = 20 + @age if @age > 4
    @height += 1
    end 
  end

  def count_the_oranges
  	puts "Your orange tree has #{@orange} oranges!"
  end

# On enlève une orange de l'arbre si le nb d'oranges restant est supérieur à Zéro
  def pick_an_orange
  	if @orange > 0
  	@orange -= 1
  	puts "One orange got picked! Your orange tree now has #{@orange} oranges!"  	
    else
    puts "How do you want to pick an orange if there is none on the tree?"
    end

  end

end


end

tree = OrangeTreeOrchard::Orange_tree.new(8)
10.times do tree.one_year_passes
end

tree2 = OrangeTreeOrchard::Orange_tree.new(2)
5.times do tree.one_year_passes
end

OrangeTreeOrchard.count
OrangeTreeOrchard.number_of_fruits

#utiliser un hash pour stocker pour chaque arbre le 


