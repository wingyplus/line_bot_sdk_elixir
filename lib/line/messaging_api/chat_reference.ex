defmodule LINE.MessagingAPI.ChatReference do
  @moduledoc """
  Provides struct and type for ChatReference
  """

  @type t :: %__MODULE__{userId: String.t()}

  defstruct [:userId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [userId: :string]
  end
end
