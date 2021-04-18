defmodule FirstProblem do
  @slice_bread 0.10
  @bottle_milk 2
  @cake 15
  def total_spent(slices, bottles, cakes) do
    total = (@slice_bread * slices) + (@bottle_milk * bottles) + (@cake * cakes)
    IO.puts(total)
  end
end
