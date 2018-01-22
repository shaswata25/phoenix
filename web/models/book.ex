defmodule LearningPhx.Book do
  use LearningPhx.Web, :model

  schema "books" do
    field :title, :string
    field :code, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :code])
    |> validate_required([:title, :code])
  end
end
