defmodule LearningPhx.BookLoan do
  use LearningPhx.Web, :model

  schema "bookloans" do
    field :start_time, :string
    field :end_time, :string
    field :time_extended, :integer
    belongs_to :user, LearningPhx.User, foreign_key: :user_id
    belongs_to :book, LearningPhx.Book, foreign_key: :book_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:start_time, :end_time, :time_extended, :user_id, :book_id])
    |> validate_required([:start_time, :end_time, :time_extended])
  end
end
