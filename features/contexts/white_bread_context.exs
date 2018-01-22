defmodule WhiteBreadContext do
  use WhiteBread.Context

  given_ ~r/^the following book loans are open$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I navigate to the Borrow Page$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I want to extend loan on "(?<argument_one>[^"]+)"$/,
fn state, %{argument_one: _argument_one} ->
  {:ok, state}
end

when_ ~r/^I click on Extend action$/, fn state ->
  {:ok, state}
end

then_ ~r/^I should get a message "(?<argument_one>[^"]+)"$/,
fn state, %{argument_one: _argument_one} ->
  {:ok, state}
end
end
