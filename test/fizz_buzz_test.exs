defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provited return the converted list" do
      expected =
        {:ok,
         [
           1,
           2,
           :fizz,
           4,
           :buzz,
           :fizz,
           7,
           8,
           :fizz,
           :buzz,
           11,
           :fizz,
           13,
           14,
           :fizzbuzz,
           16,
           17,
           :fizz,
           19,
           :buzz
         ]}

      assert FizzBuzz.build("numbers.txt") == expected
    end

    test "when a invalid file is provited return an error" do
      error = {:error, "Erro ao ler o arquivo. Erro: enoent"}
      assert FizzBuzz.build("numabers.txt") == error
    end
  end
end
