defmodule LearningPhx.BookLoanTest do
  use LearningPhx.ModelCase

  alias LearningPhx.BookLoan

  @valid_attrs %{end_time: "some end_time", start_time: "some start_time", time_extended: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = BookLoan.changeset(%BookLoan{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = BookLoan.changeset(%BookLoan{}, @invalid_attrs)
    refute changeset.valid?
  end
end
