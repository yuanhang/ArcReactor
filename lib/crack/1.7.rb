class Matrix
  def self.clear matrix
    row_vector = Array.new matrix.length, 0
    column_vector = Array.new matrix[0].length, 0
    matrix.each_with_index do |row, m|
      row.each_with_index do |e, n|
        if e == 0
          row_vector[m] = 1
          column_vector[n] = 1
        end
      end
    end

    matrix.each_with_index do |row, m|
      if row_vector[m] == 1
        matrix[m] = Array.new matrix[m].length, 0
      end
    end
    matrix = matrix.transpose
    matrix.each_with_index do |row, m|
      if column_vector[m] == 1
        matrix[m] = Array.new matrix[m].length, 0
      end
    end
    matrix.transpose
  end
end
