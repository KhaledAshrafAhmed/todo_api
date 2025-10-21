defmodule TodoApi.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :description, :string
      add :completed, :boolean, default: false, null: false
      add :priority, :integer

      timestamps(type: :utc_datetime)
    end

    create constraint(:todos, :priority_must_be_1_to_3, check: "priority >1 AND priority <=3")
  end
end
