defmodule FreelancerRates do
  @hourly_rate_times 8

  def daily_rate(hourly_rate), do: hourly_rate * @hourly_rate_times / 1

  def apply_discount(before_discount, discount), do: before_discount - (before_discount / 100) * discount

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
  end
end
