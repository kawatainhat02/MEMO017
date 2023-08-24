Erlang/OTP 24.0 [64-bit] [smp:2:2] [...]

Interactive Elixir (1.15.4) - press Ctrl+C to exit
iex> 40 + 2
42
iex> "hello" <> " world"
"hello world"

IO.puts("Hello world from Elixir")

$ elixir simple.exs

iex> 1          # integer
iex> 0x1F       # integer
iex> 1.0        # float
iex> true       # boolean
iex> :atom      # atom / symbol
iex> "elixir"   # string
iex> [1, 2, 3]  # list
iex> {1, 2, 3}  # tuple

iex> 1 + 2
3
iex> 5 * 5
25
iex> 10 / 2
5.0

iex> div(10, 2)
5
iex> div 10, 2
5
iex> rem 10, 3
1

iex> 0b1010
10
iex> 0o777
511
iex> 0x1F
31

iex> 1.0
1.0
iex> 1.0e-10
1.0e-10

iex> round(3.58)
4
iex> trunc(3.58)
3

iex> h trunc/1
                             
def trunc()

Returns the integer part of number.

iex> h Kernel.trunc/1
                             
def trunc()

Returns the integer part of number.

iex> true
true
iex> true == false
false

iex> is_boolean(true)
true
iex> is_boolean(1)
false

iex> :apple
:apple
iex> :orange
:orange
iex> :watermelon
:watermelon

iex> :apple == :apple
true
iex> :apple == :orange
false

iex> true == :true
true
iex> is_atom(false)
true
iex> is_boolean(:false)
true

iex> is_atom(Hello)
true

iex> "hellö"
"hellö"

iex> "hello
...> world"
"hello\nworld"
iex> "hello\nworld"
"hello\nworld"

iex> IO.puts("hello\nworld")
hello
world
:ok

iex> is_binary("hellö")
true

iex> byte_size("hellö")
6

iex> String.length("hellö")
5

iex> String.upcase("hellö")
"HELLÖ"

iex> add = fn a, b -> a + b end
#Function<12.71889879/2 in :erl_eval.expr/5>
iex> add.(1, 2)
3
iex> is_function(add)
true

# check if add is a function that expects exactly 2 arguments
iex> is_function(add, 2)
true
# check if add is a function that expects exactly 1 argument
iex> is_function(add, 1)
false

iex> double = fn a -> add.(a, a) end
#Function<6.71889879/1 in :erl_eval.expr/5>
iex> double.(2)
4

iex> x = 42
42
iex> (fn -> x = 0 end).()
0
iex> x
42

iex> [1, 2, true, 3]
[1, 2, true, 3]
iex> length [1, 2, 3]
3

iex> [1, 2, 3] ++ [4, 5, 6]
[1, 2, 3, 4, 5, 6]
iex> [1, true, 2, false, 3, true] -- [true, false]
[1, 2, 3, true]

iex> list = [1, 2, 3]
iex> hd(list)
1
iex> tl(list)
[2, 3]

iex> hd([])
** (ArgumentError) argument error

iex> [11, 12, 13]
~c"\v\f\r"
iex> [104, 101, 108, 108, 111]
~c"hello"

iex> [104, 101, 108, 108, 111]
'hello'

iex> i ~c"hello"
Term
  i ~c"hello"
Data type
  List
Description
  ...
Raw representation
  [104, 101, 108, 108, 111]
Reference modules
  List
Implemented protocols
  ...

  iex> 'hello' == "hello"
false
iex> 'hello' == ~c"hello"
true

iex> {:ok, "hello"}
{:ok, "hello"}
iex> tuple_size {:ok, "hello"}
2

iex> tuple = {:ok, "hello"}
{:ok, "hello"}
iex> elem(tuple, 1)
"hello"
iex> tuple_size(tuple)
2

iex> tuple = {:ok, "hello"}
{:ok, "hello"}
iex> put_elem(tuple, 1, "world")
{:ok, "world"}
iex> tuple
{:ok, "hello"}

iex> list = [1, 2, 3]
[1, 2, 3]

# This is fast as we only need to traverse `[0]` to prepend to `list`
iex> [0] ++ list
[0, 1, 2, 3]

# This is slow as we need to traverse `list` to append 4
iex> list ++ [4]
[1, 2, 3, 4]

iex> tuple = {:a, :b, :c, :d}
{:a, :b, :c, :d}
iex> put_elem(tuple, 2, :e)
{:a, :b, :e, :d}

iex> File.read("path/to/existing/file")
{:ok, "... contents ..."}
iex> File.read("path/to/unknown/file")
{:error, :enoent}

iex> tuple = {:ok, "hello"}
{:ok, "hello"}
iex> elem(tuple, 1)
"hello"


iex> [1, 2, 3] ++ [4, 5, 6]
[1, 2, 3, 4, 5, 6]
iex> [1, 2, 3] -- [2]
[1, 3]

iex> "foo" <> "bar"
"foobar"

iex> true and true
true
iex> false or is_atom(:example)
true

iex> 1 and true
** (BadBooleanError) expected a boolean on left-side of "and", got: 1

iex> false and raise("This error will never be raised")
false
iex> true or raise("This error will never be raised")
true

# or
iex> 1 || true
1
iex> false || 11
11

# and
iex> nil && 13
nil
iex> true && 17
17

# not
iex> !true
false
iex> !1
false
iex> !nil
true

iex> 1 == 1
true
iex> 1 != 2
true
iex> 1 < 2
true

iex> 1 == 1.0
true
iex> 1 === 1.0
false

iex> x = 1
1
iex> x
1

iex> x = 1
1
iex> 1 = x
1
iex> 2 = x
** (MatchError) no match of right hand side value: 1


iex> 1 = unknown
** (CompileError) iex:1: undefined variable "unknown"

iex> {a, b, c} = {:hello, "world", 42}
{:hello, "world", 42}
iex> a
:hello
iex> b
"world"

iex> {a, b, c} = {:hello, "world"}
** (MatchError) no match of right hand side value: {:hello, "world"}

iex> {a, b, c} = [:hello, "world", 42]
** (MatchError) no match of right hand side value: [:hello, "world", 42]

iex> {:ok, result} = {:ok, 13}
{:ok, 13}
iex> result
13

iex> {:ok, result} = {:error, :oops}
** (MatchError) no match of right hand side value: {:error, :oops}

iex> [a, b, c] = [1, 2, 3]
[1, 2, 3]
iex> [head | tail] = [1, 2, 3]
[1, 2, 3]
iex> head
1
iex> tail
[2, 3]
iex> a
1

iex> [head | tail] = []
** (MatchError) no match of right hand side value: []

iex> list = [1, 2, 3]
[1, 2, 3]
iex> [0 | list]
[0, 1, 2, 3]

iex> x = 1
1
iex> x = 2
2

iex> x = 1
1
iex> ^x = 2
** (MatchError) no match of right hand side value: 2

iex> 1 = 2
** (MatchError) no match of right hand side value: 2
iex> x = 1
1
iex> [^x, 2, 3] = [1, 2, 3]
[1, 2, 3]
iex> {y, ^x} = {2, 1}
{2, 1}
iex> y
2
iex> {y, ^x} = {2, 2}
** (MatchError) no match of right hand side value: {2, 2}

iex> {x, x} = {1, 1}
{1, 1}
iex> {x, x} = {1, 2}
** (MatchError) no match of right hand side value: {1, 2}

iex> [head | _] = [1, 2, 3]
[1, 2, 3]
iex> head
1


iex> _
** (CompileError) iex:1: invalid use of _. "_" represents a value to be ignored in a pattern and cannot be used in expressions

iex> length([1, [2], 3]) = 3
** (CompileError) iex:1: cannot invoke remote function :erlang.length/1 inside match







