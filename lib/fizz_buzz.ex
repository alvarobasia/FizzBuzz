defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |>File.read()
    |>headle_file()
  end
  def headle_file({:ok, content}) do
    content
    |>String.split(",")
    |>Enum.map(&convert_and_evaluate/1)
  end
  def headle_file({:error, reason}) do
    "Erro ao ler o arquivo. Erro: #{reason}"
  end

  def convert_and_evaluate(element) do
    element
    |> String.to_integer()
    |> get_correct_numbers()
  end

  def get_correct_numbers(number) when rem(number, 5) === 0 and rem(number, 3) === 0 , do: :fizzbuzz
  def get_correct_numbers(number) when rem(number, 3) === 0, do: :fizz
  def get_correct_numbers(number) when rem(number, 5) === 0, do: :buzz
  def get_correct_numbers(number), do: number
end
