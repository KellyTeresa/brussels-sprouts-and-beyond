require_relative '../../lib/cooking_classes'

describe Ingredient do
  describe '#valid?' do
    context 'if the ingredient is safe for the client' do
      it 'returns true' do
        expect(Ingredient.new(47.0, 'lb(s)', 'Brussels sprouts').valid?).to eq true
      end
    end

    context 'if the ingredient is not safe for the client' do
      it 'returns false' do
        expect(Ingredient.new(47.0, 'lb(s)', 'asdjkfhkwjehafebkwl').valid?).to eq false
      end
    end
  end

  describe 'self.parse' do
    context '"47 lb(s) Brussels sprouts" is given to Ingredient.parse' do
      let (:parsed) {Ingredient.parse("47 lb(s) Brussels sprouts")}
      it 'returns .quantity as 47.0' do
        expect(parsed.quantity).to eq(47.0)
      end
      it 'returns .unit as "lb(s)"' do
        expect(parsed.unit).to eq("lb(s)")
      end
      it 'returns .name as "Brussels sprouts"' do
        expect(parsed.name).to eq("Brussels sprouts")
      end
    end

    context '"5 tspn(s) milk" is given to Ingredient.parse' do
      let (:parsed) {Ingredient.parse("5 tspn(s) milk")}
      it 'returns .quantity as 5.0' do
        expect(parsed.quantity).to eq(5.0)
      end
      it 'returns .unit as "tspn(s)"' do
        expect(parsed.unit).to eq("tspn(s)")
      end
      it 'returns .name as "milk"' do
        expect(parsed.name).to eq("milk")
      end
    end

    context '"3 eggs" is given to Ingredient.parse' do
      let (:parsed) {Ingredient.parse("3 eggs")}
      it 'returns .quantity as 3.0' do
        expect(parsed.quantity).to eq(3.0)
      end
      it 'returns .unit as an empty string' do
        expect(parsed.unit).to eq("")
      end
      it 'returns .name as "eggs"' do
        expect(parsed.name).to eq("eggs")
      end
    end

  end
end
