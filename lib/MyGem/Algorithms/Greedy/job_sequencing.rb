module MyGem
  module Algorithms
    module Greedy
      class Job
        attr_accessor :id, :deadline, :profit

        def initialize(id, deadline, profit)
          @id = id
          @deadline = deadline
          @profit = profit
        end

        def self.job_scheduling(jobs)
          if jobs.length <= 0
            return []
          end
          # Ordena os trabalhos por ordem decrescente de lucro
          jobs = jobs.sort_by { |job| job.profit }.reverse

          # Define um array de tamanho igual ao prazo de entrega máximo
          # Inicialmente, todos os elementos do array são nulos
          schedule = Array.new(jobs.map(&:deadline).max)

          # Percorre todos os trabalhos na ordem classificada
          jobs.each do |job|
            # Verifica o prazo de entrega mais próximo disponível para o trabalho atual
            (0...job.deadline).reverse_each do |i|
              if schedule[i].nil?
                schedule[i] = job
                break
              end
            end
          end

          # Retorna os trabalhos que estão programados
          schedule.compact.sort_by { |job| job.id }
        end
      end
    end
  end
end
