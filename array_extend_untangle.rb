class Array
  # This is an awesome handy method which turn nested arrays into multiple
  # flat arrays.
  # For non-nested arrays it just reruns an array with one item.
  # [1,2].untangle -> [[1, 2]]
  # For nested array it creates a new array for each members of the nested member.
  # [[1,3],4].untangle -> [[1, 4], [3, 4]]
  # [[1,2],3,[4,5,6]].untangle ->
  # [[1, 3, 4], [1, 3, 5], [1, 3, 6], [2, 3, 4], [2, 3, 5], [2, 3, 6]]
  def untangle
    results = Array(self.shift).repeated_permutation(1).to_a

    self.each do |member|
      results = results.product(Array(member))

      results.map! do |result|
        result.flatten!
      end
    end

    results
  end
end
