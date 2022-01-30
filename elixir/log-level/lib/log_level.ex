defmodule LogLevel do
  def to_label(level, legacy?) do
   cond do
      {0, false} == {level, legacy?} -> :trace
      {1, true} == {level, legacy?} -> :debug
      {2, true} == {level, legacy?} -> :info
      {3, true} == {level, legacy?} -> :warning
      {4, true} == {level, legacy?} -> :error
      {5, false} == {level, legacy?} -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      {label, legacy?} == {:error, true} -> :ops
      {label, legacy?} == {:fatal, true} -> :ops
      {label, legacy?} == {:unknown, true} -> :dev1
      {label, legacy?} == {:unknown, false} -> :dev2
      true -> false
    end
  end
end
