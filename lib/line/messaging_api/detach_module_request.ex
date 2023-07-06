defmodule LINE.MessagingAPI.DetachModuleRequest do
  @moduledoc """
  Provides struct and type for DetachModuleRequest
  """

  @type t :: %__MODULE__{botId: String.t() | nil}

  defstruct [:botId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [botId: :string]
  end
end
