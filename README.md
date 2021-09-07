# TodoOrDie

Write TODOs in code that ensure you actually do them.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `todo_or_die` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:todo_or_die, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/todo_or_die](https://hexdocs.pm/todo_or_die).

## Usage

The macros in `TodoOrDie` will fail during compilation if a certain condition is met.
For example, create your own Y2K:

```elixir
defmodule MyHappyModule do
  require TodoOroDie

  TodoOrDie.after_date!(1999, 12, 31)
```

## Maintainer

This project was developed by [Rosa Richter](https://about.me/rosa.richter).
You can get in touch with her on [Keybase.io](https://keybase.io/cantido).

## Thanks

Thanks to [Justin Searls](https://github.com/searls) for [the original `todo_or_die`](https://github.com/searls/todo_or_die) in Ruby.
And thanks to [David Pedersen](https://github.com/davidpdrsn) for inspiring me by creating [the Rust version](https://github.com/davidpdrsn/todo-or-die).

## License

MIT License

Copyright 2021 Rosa Richter

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

