require_relative '../../../../lib/MyGem/Algorithms/Greedy/minimize_cash_flow'
RSpec.describe 'MyGem::Algorithms::Greedy::MinimizeCashFlow' do
  describe '#handle' do
    context 'when there are no debts' do
      it 'returns an empty list' do
        expect(MyGem::Algorithms::Greedy::MinimizeCashFlow.handle([])).to eq([])
      end
    end

    context 'when there is only one debt' do
      it 'returns a list with one transaction' do
        debts = [['Alice', 'Bob', 10]]
        result = MyGem::Algorithms::Greedy::MinimizeCashFlow.handle(debts)
        expect(result).to eq([['Alice', 'Bob', 10]])
      end
    end

  end
end
