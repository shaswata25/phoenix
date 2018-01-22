defmodule LearningPhx.Repo.Migrations.CreateBookLoan do
  use Ecto.Migration

  def change do
    create table(:bookloans) do
      add :start_time, :string
      add :end_time, :string
      add :time_extended, :integer
      add :user_id, references(:users, on_delete: :nothing)
      add :book_id, references(:books, on_delete: :nothing)

      timestamps()
    end

    create index(:bookloans, [:user_id])
    create index(:bookloans, [:book_id])
  end
end
