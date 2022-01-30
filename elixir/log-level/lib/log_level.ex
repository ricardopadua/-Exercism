defmodule LogLevel do
  def to_label(level, legacy?) do
   cond do
      {0, false} == {level, legacy?} -> :trace
      {1} == {level} -> :debug
      {2} == {level} -> :info
      {3} == {level} -> :warning
      {4} == {level} -> :error
      {5, false} == {level, legacy?} -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      {label} == {:error} -> :ops
      {label} == {:fatal} -> :ops
      {label, legacy?} == {:unknown, true} -> :dev1
      {label, legacy?} == {:unknown, false} -> :dev2
      true -> false
    end
  end
end
