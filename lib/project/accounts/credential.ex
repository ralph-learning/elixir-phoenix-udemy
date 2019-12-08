defmodule Project.Accounts.Credential do
  use Ecto.Schema
  import Ecto.Changeset

  alias Project.Accounts.User

  schema "credentials" do
    field :email, :string
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(credential, attrs) do
    credential
    |> cast(attrs, [:email])
    |> validate_required([:email])
  end
end
