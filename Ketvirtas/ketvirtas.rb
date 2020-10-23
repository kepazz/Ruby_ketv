# frozen_string_literal: true

# Triangle klase
class Triangle
  def initialize(aaa, bbb, ccc)
    if aaa + bbb > ccc && aaa + ccc > bbb && bbb + ccc > aaa
      @sidea = aaa
      @sideb = bbb
      @sidec = ccc
    else
      puts('Triangle cant be created')
      exit
    end
  end

  def area
    Math.sqrt(halfperimetre * (halfperimetre - @sidea) * (halfperimetre - @sideb) * (halfperimetre - @sidec))
  end

  def perimetres
    @sidea + @sideb + @sidec
  end

  def halfperimetre
    perimetres / 2
  end
end

puts('Iveskite 1 - aja krastine ')
a = gets.chomp.to_i
puts('Iveskite 1 - aja krastine ')
b = gets.chomp.to_i
puts('Iveskite 1 - aja krastine ')
c = gets.chomp.to_i

triangle = Triangle.new(a, b, c)

puts "Perimetras : #{triangle.perimetres}"
puts "Pusperimetris : #{triangle.halfperimetre}"
puts "Plotas : #{triangle.area}"