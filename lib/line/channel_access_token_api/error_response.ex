defmodule LINE.ChannelAccessTokenAPI.ErrorResponse do
  @moduledoc """
  Provides struct and type for ErrorResponse
  """

  @type t :: %__MODULE__{error: String.t() | nil, error_description: String.t() | nil}

  defstruct [:error, :error_description]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [error: :string, error_description: :string]
  end
end
