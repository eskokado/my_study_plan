require_relative '../../../../lib/MyGem/Algorithms/Greedy/find_maximum'

describe "Find maximum sum" do
  it "Given three stacks of the positive numbers, the task is to find the possible equal maximum sum of the stacks with the removal of top elements allowed" do
    stack1 = [3, 2, 1, 1, 1]
    stack2 = [4, 3, 2]
    stack3 = [1, 1, 4, 1]
    n1 = stack1.size
    n2 = stack2.size
    n3 = stack3.size

    result = MyGem::Algorithms::Greedy::FindMaximum.find(stack1, stack2, stack3, n1, n2, n3)

    expect(result).to eq(5)
  end
end
