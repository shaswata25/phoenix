defmodule LearningPhx.LoanTest do
  use LearningPhx.ModelCase

  alias LearningPhx.Loan

  @valid_attrs %{code: "some code", end_date: ~D[2010-04-17], start_date: ~D[2010-04-17], time_extended: 42, title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Loan.changeset(%Loan{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Loan.changeset(%Loan{}, @invalid_attrs)
    refute changeset.valid?
  end
end
