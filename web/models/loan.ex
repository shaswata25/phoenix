defmodule LearningPhx.Loan do
  use LearningPhx.Web, :model

  schema "loans" do
    field :title, :string
    field :code, :string
    field :start_date, :date
    field :end_date, :date
    field :time_extended, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :code, :start_date, :end_date, :time_extended])
    |> validate_required([:title, :code, :start_date, :end_date, :time_extended])
  end
end
