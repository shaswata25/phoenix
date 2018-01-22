defmodule LearningPhx.Repo.Migrations.CreateLoan do
  use Ecto.Migration

  def change do
    create table(:loans) do
      add :title, :string
      add :code, :string
      add :start_date, :string
      add :due_date, :string
      add :times_extended, :integer

      timestamps()
    end
  end
end
