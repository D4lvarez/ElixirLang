defmodule Sum do
  # Si el numero es cero se termina la función
  def up_to(0), do: 0
  def up_to(number), do: number + up_to(number - 1)
end
