defmodule LearningPhx.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :code, :string

      timestamps()
    end
  end
end
