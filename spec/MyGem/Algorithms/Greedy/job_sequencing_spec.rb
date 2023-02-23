require_relative '../../../../lib/MyGem/Algorithms/Greedy/job_sequencing'

require 'spec_helper'

RSpec.describe 'job_scheduling' do
  it 'schedules jobs correctly' do
    jobs = [
      MyGem::Algorithms::Greedy::Job.new(1, 2, 100),
      MyGem::Algorithms::Greedy::Job.new(2, 1, 50),
      MyGem::Algorithms::Greedy::Job.new(3, 2, 10),
      MyGem::Algorithms::Greedy::Job.new(4, 1, 20),
      MyGem::Algorithms::Greedy::Job.new(5, 3, 30)
    ]
    scheduled_jobs = MyGem::Algorithms::Greedy::Job.job_scheduling(jobs)
    expect(scheduled_jobs.map(&:id)).to eq([1, 2, 5])
  end

  it 'handles empty job list' do
    scheduled_jobs = MyGem::Algorithms::Greedy::Job.job_scheduling([])
    expect(scheduled_jobs).to be_empty
  end
end
