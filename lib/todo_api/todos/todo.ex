defmodule TodoApi.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :title, :string
    field :description, :string
    field :completed, :boolean, default: false
    field :priority, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :description, :completed, :priority])
    |> validate_required([:title, :description, :completed])
    |> validate_inclusion(:priority, 1..3)
    |> validate_length(:title, min: 1, max: 100)
  end
end
