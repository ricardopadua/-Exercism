defmodule Secrets do

  def secret_add(secret), do: fn (params) -> params + secret end

  def secret_subtract(secret), do: fn (params) -> params - secret end

  def secret_multiply(secret), do: fn (params) -> params * secret end

  def secret_divide(secret), do: fn (params) -> params / secret |> trunc() end

  def secret_and(secret), do: fn (params) -> Bitwise.&&&(params,secret) end

  def secret_xor(secret), do: fn (params) -> Bitwise.^^^(params,secret) end

  def secret_combine(secret_function1, secret_function2) do
    fn (params) ->
      secret_function1.(params)
      |> secret_function2.()
    end
  end
end
