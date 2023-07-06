defmodule LINE.LIFFAPI.UpdateLiffAppRequest do
  @moduledoc """
  Provides struct and type for UpdateLiffAppRequest
  """

  @type t :: %__MODULE__{
          botPrompt: String.t() | nil,
          description: String.t() | nil,
          features: LINE.LIFFAPI.LiffFeatures.t() | nil,
          permanentLinkPattern: String.t() | nil,
          scope: [String.t()] | nil,
          view: LINE.LIFFAPI.LiffView.t() | nil
        }

  defstruct [:botPrompt, :description, :features, :permanentLinkPattern, :scope, :view]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      botPrompt: :string,
      description: :string,
      features: {LINE.LIFFAPI.LiffFeatures, :t},
      permanentLinkPattern: :string,
      scope: {:array, :string},
      view: {LINE.LIFFAPI.LiffView, :t}
    ]
  end
end
