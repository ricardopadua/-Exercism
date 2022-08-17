defmodule LanguageList do
  def new(), do: []
  def add(list, language), do: [language | list]
  def remove(list), do: List.delete(list, List.first(list))
  def first(list), do: List.first(list)
  def count(list), do: length(list)
  def exciting_list?(list), do: "Elixir" in list
end
