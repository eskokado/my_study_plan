require_relative '../../../../lib/MyGem/Algorithms/Greedy/minimize_cash_flow'
RSpec.describe 'MyGem::Algorithms::Greedy::MinimizeCashFlow' do
  describe '#handle' do
    context 'when there are no debts' do
      it 'returns an empty list' do
        expect(MyGem::Algorithms::Greedy::MinimizeCashFlow.handle([])).to eq([])
      end
    end
  end
end
