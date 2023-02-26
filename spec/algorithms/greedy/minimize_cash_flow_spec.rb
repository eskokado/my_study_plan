require_relative '../../../lib/algorithms/greedy/minimize_cash_flow'
RSpec.describe 'Algorithms::Greedy' do
  describe '#minimize_cash_flow' do
    context 'when there are no debts' do
      it 'returns an empty list' do
        expect(Algorithms::Greedy.minimize_cash_flow([])).to eq([])
      end
    end

  end
end
