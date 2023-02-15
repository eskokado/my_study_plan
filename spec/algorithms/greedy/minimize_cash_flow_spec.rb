require_relative '../../../app/algorithms/greedy/minimize_cash_flow'
RSpec.describe Algorithms::Greedy do
  describe "#minimize_cash_flow" do
    it "correctly balances the debts in a list of transactions" do
      transactions = [
        ["Alice", "Bob", 10],
        ["Bob", "Charlie", 5],
        ["Charlie", "David", 15],
        ["David", "Alice", 20]
      ]
      result = Algorithms::Greedy.minimize_cash_flow(transactions)
      expect(result).to match_array([
                                      ["Alice", "Charlie", 5],
                                      ["David", "Charlie", 15],
                                      ["David", "Bob", 5]
                                    ])
    end

    it "returns an empty list if there are no debts" do
      transactions = []
      result = Algorithms::Greedy.minimize_cash_flow(transactions)
      expect(result).to eq([])
    end

    it "correctly balances the debts in a list of transactions with multiple debts involving the same people" do
      transactions = [
        ["Alice", "Bob", 10],
        ["Bob", "Charlie", 5],
        ["Charlie", "David", 15],
        ["David", "Alice", 20],
        ["Alice", "Charlie", 25]
      ]
      result = Algorithms::Greedy.minimize_cash_flow(transactions)
      expect(result).to match_array([
                                      ["Alice", "Charlie", 20],
                                      ["David", "Charlie", 15],
                                      ["David", "Bob", 5]
                                    ])
    end

  end
end
# it "prints the optimal payment plan" do
#   expect { Algorithms::Greedy.minimize_cash_flow(graph) }.to output("Pay 3000 from person 2 to person 1\nPay 2000 from person 2 to person 0\n").to_stdout
# end
