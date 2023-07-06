defmodule LINE.MessagingAPI.RichMenuRequest do
  @moduledoc """
  Provides struct and type for RichMenuRequest
  """

  @type t :: %__MODULE__{
          areas: [LINE.MessagingAPI.RichMenuArea.t()] | nil,
          chatBarText: String.t() | nil,
          name: String.t() | nil,
          selected: boolean | nil,
          size: LINE.MessagingAPI.RichMenuSize.t() | nil
        }

  defstruct [:areas, :chatBarText, :name, :selected, :size]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      areas: {:array, {LINE.MessagingAPI.RichMenuArea, :t}},
      chatBarText: :string,
      name: :string,
      selected: :boolean,
      size: {LINE.MessagingAPI.RichMenuSize, :t}
    ]
  end
end
