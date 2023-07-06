defmodule LINE.LIFFAPI.GetAllLiffAppsResponse do
  @moduledoc """
  Provides struct and type for GetAllLiffAppsResponse
  """

  @type t :: %__MODULE__{apps: [LINE.LIFFAPI.LiffApp.t()] | nil}

  defstruct [:apps]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [apps: {:array, {LINE.LIFFAPI.LiffApp, :t}}]
  end
end
