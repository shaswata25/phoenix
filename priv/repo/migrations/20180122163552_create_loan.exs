defmodule LearningPhx.Repo.Migrations.CreateLoan do
  use Ecto.Migration

  def change do
    create table(:loans) do
      add :title, :string
      add :code, :string
      add :start_date, :date
      add :end_date, :date
      add :time_extended, :integer

      timestamps()
    end
  end
end
