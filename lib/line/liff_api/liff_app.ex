defmodule LINE.LIFFAPI.LiffApp do
  @moduledoc """
  Provides struct and type for LiffApp
  """

  @type t :: %__MODULE__{
          botPrompt: String.t() | nil,
          description: String.t() | nil,
          features: LINE.LIFFAPI.LiffFeatures.t() | nil,
          liffId: String.t() | nil,
          permanentLinkPattern: String.t() | nil,
          scope: [String.t()] | nil,
          view: LINE.LIFFAPI.LiffView.t() | nil
        }

  defstruct [:botPrompt, :description, :features, :liffId, :permanentLinkPattern, :scope, :view]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      botPrompt: :string,
      description: :string,
      features: {LINE.LIFFAPI.LiffFeatures, :t},
      liffId: :string,
      permanentLinkPattern: :string,
      scope: {:array, :string},
      view: {LINE.LIFFAPI.LiffView, :t}
    ]
  end
end
