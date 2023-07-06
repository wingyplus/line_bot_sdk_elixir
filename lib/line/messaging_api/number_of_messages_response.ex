defmodule LINE.MessagingAPI.NumberOfMessagesResponse do
  @moduledoc """
  Provides struct and type for NumberOfMessagesResponse
  """

  @type t :: %__MODULE__{status: String.t(), success: integer | nil}

  defstruct [:status, :success]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [status: :string, success: :integer]
  end
end
