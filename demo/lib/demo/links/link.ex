defmodule Demo.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :url, :string
    belongs_to :user, Demo.Users.User
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(link, attrs \\ %{}) do
    link
    |> cast(attrs, [:url, :user_id])
    |> validate_required([:url, :user_id])
  end
end
