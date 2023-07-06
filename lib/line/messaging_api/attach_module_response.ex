defmodule LINE.MessagingAPI.AttachModuleResponse do
  @moduledoc """
  Provides struct and type for AttachModuleResponse
  """

  @type t :: %__MODULE__{bot_id: String.t(), scopes: [String.t()]}

  defstruct [:bot_id, :scopes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bot_id: :string, scopes: {:array, :string}]
  end
end
