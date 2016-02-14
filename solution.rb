NUMBERS = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6,
  seven: 7, eight: 8, nine: 9 }
OPERATORS = { plus: :+, minus: :-, times: :*, divided_by: :/ }

NUMBERS.each do |name, number|
  define_method(name) do |operation = nil|
    operation.nil? ? number : number.send(*operation)
  end
end

OPERATORS.each do |name, operator|
  define_method(name) do |number|
    [operator, number]
  end
end
