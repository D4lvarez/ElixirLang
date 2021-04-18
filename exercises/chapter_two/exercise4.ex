defmodule MatchstickFactory do
  @big 50 #@variable sirve como identificar|constante dentro del módulo
  @medium 20
  @small 5
  def boxes(quantity)  do
    big_ones = div(quantity, @big)
    remaining = rem(quantity, @big)

    medium_ones = div(remaining, @medium)
    remaining = rem(remaining, @medium)

    small_ones = div(remaining, @small)
    remaining = rem(remaining, @small)

    # Esto representa un map
    %{
      big: big_ones,
      medium: medium_ones,
      small: small_ones,
      remaining: remaining
    }
  end
end
