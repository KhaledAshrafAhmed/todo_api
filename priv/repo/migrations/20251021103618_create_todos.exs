defmodule TodoApi.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string, required: true
      add :description, :string
      add :completed, :boolean, default: false, null: false
      add :priority, :integer

      timestamps(type: :utc_datetime)
    end

  end
end
