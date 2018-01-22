defmodule LearningPhx.Loan do
  use LearningPhx.Web, :model

  schema "loans" do
    field :title, :string
    field :code, :string
    field :start_date, :string
    field :due_date, :string
    field :times_extended, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :code, :start_date, :due_date, :times_extended])
    |> validate_required([:title, :code, :start_date, :due_date, :times_extended])
  end
end
