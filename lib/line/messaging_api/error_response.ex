defmodule LINE.MessagingAPI.ErrorResponse do
  @moduledoc """
  Provides struct and type for ErrorResponse
  """

  @type t :: %__MODULE__{details: [LINE.MessagingAPI.ErrorDetail.t()] | nil, message: String.t()}

  defstruct [:details, :message]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [details: {:array, {LINE.MessagingAPI.ErrorDetail, :t}}, message: :string]
  end
end
