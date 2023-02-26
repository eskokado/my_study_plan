module Algorithms
  module Greedy
    def self.minimize_cash_flow(transactions)
      # Calcula o total de dívida de cada pessoa
      balances = Hash.new(0)
      transactions.each do |transaction|
        balances[transaction[0]] -= transaction[2]
        balances[transaction[1]] += transaction[2]
      end

      # Divide a lista de pessoas em duas: devedores e credores
      negative_balances = balances.select { |_, balance| balance < 0 }
      positive_balances = balances.select { |_, balance| balance > 0 }

      # Ordena as listas em ordem alfabética
      negative_balances = negative_balances.sort_by { |name, _| name }
      positive_balances = positive_balances.sort_by { |name, _| name }

      # Executa o algoritmo para equilibrar as dívidas
      transactions = []
      i, j = 0, 0
      while i < negative_balances.length && j < positive_balances.length
        debtor, debtor_balance = negative_balances[i]
        creditor, creditor_balance = positive_balances[j]
        amount = [debtor_balance.abs, creditor_balance].min

        if debtor_balance.abs < creditor_balance
          j += 1
        elsif debtor_balance.abs > creditor_balance
          i += 1
        else
          i += 1
          j += 1
        end

        transactions << [debtor, creditor, amount]
      end

      transactions
    end
  end
end
