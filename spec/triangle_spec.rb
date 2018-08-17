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
  end
end
