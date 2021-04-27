defmodule NumberCompare do
  def greater(n1, n2) do
    check(n1 >= n2, n1, n2)
  end
  # defp define una funcion privada
  defp check(true, n1, _), do: n1
  defp check(false, _, n2), do: n2
end
