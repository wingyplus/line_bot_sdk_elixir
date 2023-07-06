defmodule LINE.LIFFAPI.LiffView do
  @moduledoc """
  Provides struct and type for LiffView
  """

  @type t :: %__MODULE__{moduleMode: boolean | nil, type: String.t(), url: String.t()}

  defstruct [:moduleMode, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [moduleMode: :boolean, type: :string, url: :string]
  end
end
