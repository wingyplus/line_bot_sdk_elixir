defmodule LINE.MessagingAPI.ModuleBot do
  @moduledoc """
  Provides struct and type for ModuleBot
  """

  @type t :: %__MODULE__{
          basicId: String.t(),
          displayName: String.t(),
          pictureUrl: String.t() | nil,
          premiumId: String.t() | nil,
          userId: String.t()
        }

  defstruct [:basicId, :displayName, :pictureUrl, :premiumId, :userId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      basicId: :string,
      displayName: :string,
      pictureUrl: :string,
      premiumId: :string,
      userId: :string
    ]
  end
end
