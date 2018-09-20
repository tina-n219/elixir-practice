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
    # Hint:
    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching
  end

  def tag_tokens(list) do

  Enum.map(list, fn(x) -> 
  if x == "+" || x == "-" || x == "*" || x == "/" do
    {:op, x}
  else
    {:num, String.to_integer(x)}
  end
end
