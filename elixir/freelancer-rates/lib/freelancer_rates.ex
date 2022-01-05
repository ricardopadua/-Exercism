defmodule FreelancerRates do
  @hourly_rate_times 8
  @month_billable_days 22

  def daily_rate(hourly_rate), do: hourly_rate * @hourly_rate_times / 1

  def apply_discount(before_discount, discount), do: before_discount - (before_discount / 100) * discount

  def monthly_rate(hourly_rate, discount) do
    monthly_rate = daily_rate(hourly_rate) * @month_billable_days
    monthly_rate - ((monthly_rate / 100) * discount)
    |> Float.ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do

  end
end
