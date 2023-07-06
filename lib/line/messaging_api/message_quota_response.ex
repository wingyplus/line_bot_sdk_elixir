defmodule LINE.MessagingAPI.MessageQuotaResponse do
  @moduledoc """
  Provides struct and type for MessageQuotaResponse
  """

  @type t :: %__MODULE__{type: String.t(), value: integer | nil}

  defstruct [:type, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: :string, value: :integer]
  end
end
