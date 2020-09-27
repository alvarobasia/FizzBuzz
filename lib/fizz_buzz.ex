defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> headle_file()
  end

  defp headle_file({:ok, content}) do
    result =
      content
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate/1)

    {:ok, result}
  end

  defp headle_file({:error, reason}), do: {:error, "Erro ao ler o arquivo. Erro: #{reason}"}

  defp convert_and_evaluate(element) do
    element
    |> String.to_integer()
    |> get_correct_numbers()
  end

  defp get_correct_numbers(number) when rem(number, 5) === 0 and rem(number, 3) === 0,
    do: :fizzbuzz

  defp get_correct_numbers(number) when rem(number, 3) === 0, do: :fizz
  defp get_correct_numbers(number) when rem(number, 5) === 0, do: :buzz
  defp get_correct_numbers(number), do: number
end
