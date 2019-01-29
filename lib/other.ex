defmodule Other do
  @my 2
  square = fn x -> x * @my end
  square.(2)

  def square2(x) do
    test = x * x
    test
  end

  def range do
    1..10
    |> Enum.map(fn x -> x * x end)
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
  end

  def try_raise do
    try do
      # throw(:hello)
      raise "другая ошибка"
    rescue
      _error ->
        "перехват любой другой ошибки"
        # after
        #   IO.puts("Я выполнюсь всегда")
    end
  end

  def try_throw do
    try do
      throw(:hello)
      # raise "другая ошибка"
    catch
      message ->
        "Поймана ошибка с сообщением #{message}."
        # after
        #   IO.puts("Я выполнюсь всегда")
    end
  end
end
