module Algorithms
  module Greedy
    def self.minimize_cash_flow(transactions)
      balances = Hash.new(0)
      transactions.sort_by { |t| [t[0], t[1]] }.each do |from, to, amount|
        balances[from] -= amount
        balances[to] += amount
      end

      transaction_list = []
      while !balances.empty?
        max_debtor, _ = balances.max
        max_creditor, _ = balances.min

        break if balances[max_debtor] == 0 && balances[max_creditor] == 0

        amount = [balances[max_debtor].abs, balances[max_creditor].abs].min
        balances[max_debtor] += amount
        balances[max_creditor] -= amount
        transaction_list << [max_debtor, max_creditor, amount]

        balances.delete(max_debtor) if balances[max_debtor] == 0
        balances.delete(max_creditor) if balances[max_creditor] == 0
      end

      transaction_list
    end
  end
end
