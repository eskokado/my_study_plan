require_relative '../../../lib/algorithms/greedy/minimize_cash_flow'
RSpec.describe 'Algorithms::Greedy' do
  describe '#minimize_cash_flow' do
    context 'when there are no debts' do
      it 'returns an empty list' do
        expect(Algorithms::Greedy.minimize_cash_flow([])).to eq([])
      end
    end

    context 'when there is only one debt' do
      it 'returns a list with one transaction' do
        debts = [['Alice', 'Bob', 10]]
        result = Algorithms::Greedy.minimize_cash_flow(debts)
        expect(result).to eq([['Alice', 'Bob', 10]])
      end
    end

  end
end
