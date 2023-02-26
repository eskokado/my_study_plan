module MyGem
  module Algorithms
    module Greedy
      class MinimizeCashFlow
        def self.handle(transactions)
          balances = Hash.new(0)
          transactions.sort_by { |t| [t[0], t[1]] }.each do |from, to, amount|
            balances[from] -= amount
            balances[to] += amount
          end

          # executa o algoritmo de "minimum cash flow"
          transactions_list = []
          while balances.values.any?(&:nonzero?)
            max_debtor, max_creditor = balances.minmax_by { |_, balance| balance }
            amount = [max_debtor.last.abs, max_creditor.last.abs].min
            transactions_list << [max_debtor.first, max_creditor.first, amount]
            balances[max_debtor.first] += amount
            balances[max_creditor.first] -= amount
          end

          transactions_list
        end
      end
    end
  end
end
