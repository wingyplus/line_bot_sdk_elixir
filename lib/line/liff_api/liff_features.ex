defmodule LINE.LIFFAPI.LiffFeatures do
  @moduledoc """
  Provides struct and type for LiffFeatures
  """

  @type t :: %__MODULE__{ble: boolean | nil, qrCode: boolean | nil}

  defstruct [:ble, :qrCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ble: :boolean, qrCode: :boolean]
  end
end
