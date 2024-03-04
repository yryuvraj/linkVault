defmodule Demo.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :url, :text

      timestamps(type: :utc_datetime)
    end
  end
end
