defmodule LINE.MessagingAPI.ErrorDetail do
  @moduledoc """
  Provides struct and type for ErrorDetail
  """

  @type t :: %__MODULE__{message: String.t() | nil, property: String.t() | nil}

  defstruct [:message, :property]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, property: :string]
  end
end
