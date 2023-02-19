module Algorithms
  module Greedy
    def self.minimize_cash_flow(transactions)
      # Cria um hash para armazenar os saldos atuais de cada pessoa
      balances = Hash.new(0)
      transactions.each do |transaction|
        debtor, creditor, amount = transaction
        balances[debtor] -= amount
        balances[creditor] += amount
      end

      # Cria uma lista de pares de pessoas que precisam trocar dinheiro
      transactions = []
      until balances.values.all?(&:zero?)
        # Encontra a pessoa que tem o maior saldo devedor
        debtor = balances.key(balances.values.min)

        # Encontra a pessoa que tem o maior saldo credor
        creditor = balances.key(balances.values.max)

        # Calcula o valor da transação
        amount = [balances[debtor].abs, balances[creditor].abs].min

        # Adiciona a transação à lista de transações
        transactions << [debtor, creditor, amount]

        # Atualiza os saldos
        balances[debtor] += amount
        balances[creditor] -= amount
      end

      # Combina transações com a mesma pessoa
      combined_transactions = []
      transactions.each do |transaction|
        debtor, creditor, amount = transaction
        opposite_transaction = transactions.find do |t|
          t[0] == creditor && t[1] == debtor
        end
        if opposite_transaction
          combined_amount = [amount, opposite_transaction[2]].min
          transactions.delete(opposite_transaction)
          amount -= combined_amount
          opposite_transaction[2] -= combined_amount
        end
        combined_transactions << [debtor, creditor, amount] unless amount.zero?
      end

      combined_transactions.sort_by! {|t| t[0]}
    end
  end
end
