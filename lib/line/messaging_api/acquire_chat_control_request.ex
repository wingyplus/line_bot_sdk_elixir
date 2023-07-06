defmodule LINE.MessagingAPI.AcquireChatControlRequest do
  @moduledoc """
  Provides struct and type for AcquireChatControlRequest
  """

  @type t :: %__MODULE__{expired: boolean | nil, ttl: integer | nil}

  defstruct [:expired, :ttl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [expired: :boolean, ttl: :integer]
  end
end
