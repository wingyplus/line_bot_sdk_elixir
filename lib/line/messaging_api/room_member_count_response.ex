defmodule LINE.MessagingAPI.RoomMemberCountResponse do
  @moduledoc """
  Provides struct and type for RoomMemberCountResponse
  """

  @type t :: %__MODULE__{count: integer}

  defstruct [:count]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [count: :integer]
  end
end
