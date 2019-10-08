# No idea what to do with this... 🤷‍♂️

defmodule Mix.Tasks.Seed do
  use Mix.Task
  alias Hello.DatabaseSeeder

  @shortdoc "Simply calls the Hello.say/0 function."
  def run(_) do
    # calling our Hello.say() function from earlier

    with {:ok, list} <- :application.get_key(:hello, :modules) do
      IO.inspect(list)
    end

    IO.puts("HELLO THERE")

    # IO.inspect(System.get_env())
    # IO.inspect(__MODULE__)
    IO.inspect(__ENV__)
    # DatabaseSeeder.seed()
  end
end
