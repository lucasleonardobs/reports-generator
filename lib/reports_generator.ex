defmodule ReportsGenerator do
  def build(filename) do
    case File.read("reports/#{filename}") do
      {:ok, result} -> result
      {:error, reason} -> raise "Error while building report #{filename}: #{reason}"
    end
  end
end
