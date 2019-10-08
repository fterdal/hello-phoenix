# Hello Phoenix Robots

Useful Scripts:

Seed Database:
```sh
mix ecto.setup
```

Reset Database (Drop Tables and reset them):
```sh
mix ecto.reset
```

Start Server:
```sh
mix phx.server
```

Start a IEX shell:
```sh
iex -S mix
```

Clean up the _build cache:
```sh
mix do clean
```

Observer (A fancy GUI for your Erlang runtime):
```sh
iex -S mix
iex(1)> :observer.start()
```
