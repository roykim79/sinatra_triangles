require 'rspec'
require 'triangle'

describe Triangle do
  describe '#type' do
    it "returns 'equilateral' for triangles with all sides equal in length" do
      triangle = Triangle.new(10, 10, 10)
      expect(triangle.type()).to eq('equilateral')
    end

    it "returns 'isosceles' for triangles with exactly 2 equal lengths" do
      triangle = Triangle.new(10, 10, 15)
      expect(triangle.type()).to eq('isosceles')
    end

    it "returns 'isosceles' for triangles with exactly 2 equal lengths" do
      triangle = Triangle.new(10, 15, 10)
      expect(triangle.type()).to eq('isosceles')
    end

    it "returns 'isosceles' for triangles with exactly 2 equal lengths" do
      triangle = Triangle.new(15, 10, 10)
      expect(triangle.type()).to eq('isosceles')
    end

    it "returns 'scalene' for triangles with no equal lengths" do
      triangle = Triangle.new(15, 10, 20)
      expect(triangle.type()).to eq('scalene')
    end

    it "returns 'NOT a triangle' if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side" do
      triangle = Triangle.new(15, 10, 30)
      expect(triangle.type()).to eq('NOT a triangle')
    end

    it "returns 'NOT a triangle' if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side" do
      triangle = Triangle.new(30, 15, 10)
      expect(triangle.type()).to eq('NOT a triangle')
    end

    it "returns 'NOT a triangle' if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side" do
      triangle = Triangle.new(15, 30, 10)
      expect(triangle.type()).to eq('NOT a triangle')
    end
  end
end
