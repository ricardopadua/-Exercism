defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(minutes), do: expected_minutes_in_oven() - minutes

  def preparation_time_in_minutes(layer),  do: layer * 2

  # Please define the 'total_time_in_minutes/2' function

  # Please define the 'alarm/0' function
end
