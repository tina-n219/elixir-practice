defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    expr
    |> String.split
    |> tag_tokens
    |> multiAndDiv
    |> addAndSub
    |> returnVal
  end

  def tag_tokens(list) do
    Enum.map(list, fn(x) -> 
      if (x == "+" || x == "-" || x == "*" || x == "/") do
        {:op, x}
      else
        {:num, String.to_integer(x)}
        end
    end)
  end


  def multiAndDiv(list) do

  end

  def addAndSub(list) do

  end

  def returnVal(list) do

  end

end
