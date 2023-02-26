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

    context 'when there are multiple debts involving multiple people' do
      it 'correctly balances the debts' do
        debts = [
          ['Alice', 'Bob', 10],
          ['Bob', 'Charlie', 20],
          ['Charlie', 'Alice', 15],
          ['David', 'Charlie', 25],
          ['David', 'Bob', 5],
          ['Charlie', 'David', 15],
          ['Alice', 'David', 5]
        ]
        result = Algorithms::Greedy.minimize_cash_flow(debts)
        expect(result).to match_array([
                                        ['Alice', 'Charlie', 5],
                                        ['David', 'Charlie', 15],
                                        ['David', 'Bob', 5]
                                      ])
      end
    end
  end
end
