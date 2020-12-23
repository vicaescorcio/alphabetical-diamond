class Diamond
  ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z].freeze

  def build(input)
    tail = build_triangle(input)
    head = tail.reverse

    tail.shift

    [head, tail].flatten.join
  end

  private
  def build_triangle(input)
    index = ALPHABET.index(input.capitalize)
    base_line = (index * 2) + 1
    output = []

    head = 0
    tail = base_line - 1

    ALPHABET[0..index].reverse.each do |element|
      line = '_' * base_line + "\n"
      line[head] = element
      line[tail] = element

      output << line
      head += 1
      tail -= 1
    end

    output
  end
end
