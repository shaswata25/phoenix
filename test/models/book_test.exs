defmodule LearningPhx.BookTest do
  use LearningPhx.ModelCase

  alias LearningPhx.Book

  @valid_attrs %{code: "some code", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Book.changeset(%Book{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Book.changeset(%Book{}, @invalid_attrs)
    refute changeset.valid?
  end
end
