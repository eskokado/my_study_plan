require_relative '../../../app/algorithms/greedy/job_sequencing'
describe "Job Sequencing Problem" do
  jobs = [['a', 2, 100], ['b', 1, 19], ['c', 2, 27], ['d', 1, 25], ['e', 3, 15]]
  n = jobs.size
  it "Given matrix with id, deadline and profit call job sequencing return in the result array with job sequence" do
    result = Algorithms::Greedy.job_sequencing(jobs, n)
    expect(result).to eq([1, 0, 4, -1, -1])
  end
end
