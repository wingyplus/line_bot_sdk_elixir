defmodule LINE.LIFFAPI.AddLiffAppResponse do
  @moduledoc """
  Provides struct and type for AddLiffAppResponse
  """

  @type t :: %__MODULE__{liffId: String.t()}

  defstruct [:liffId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [liffId: :string]
  end
end
