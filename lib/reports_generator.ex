defmodule ReportsGenerator do
  def build(filename) do
    "reports/#{filename}"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, content}), do: content
  defp handle_file({:error, _reason}), do: "Error while reading file"
end
