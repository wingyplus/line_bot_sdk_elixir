defmodule LINE.MessagingAPI.Action do
  @moduledoc """
  Provides struct and type for Action
  """

  @type t :: %__MODULE__{label: String.t() | nil, type: String.t() | nil}

  defstruct [:label, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [label: :string, type: :string]
  end
end
