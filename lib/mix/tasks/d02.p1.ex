defmodule Mix.Tasks.D02.P1 do
  use Mix.Task

  import AdventOfCode.Day02

  @shortdoc "Day 02 Part 1"
  def run(args) do
    input = AdventOfCode.Input.get!(2, 2023)
    info = {12, 13, 14}

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1(info) end}),
      else:
        input
        |> part1(info)
        |> IO.inspect(label: "Part 1 Results")
  end
end
