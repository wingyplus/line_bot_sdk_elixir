defmodule LINE.MessagingAPI.RichMenuResponse do
  @moduledoc """
  Provides struct and type for RichMenuResponse
  """

  @type t :: %__MODULE__{
          areas: [LINE.MessagingAPI.RichMenuArea.t()],
          chatBarText: String.t(),
          name: String.t(),
          richMenuId: String.t(),
          selected: boolean,
          size: LINE.MessagingAPI.RichMenuSize.t()
        }

  defstruct [:areas, :chatBarText, :name, :richMenuId, :selected, :size]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      areas: {:array, {LINE.MessagingAPI.RichMenuArea, :t}},
      chatBarText: :string,
      name: :string,
      richMenuId: :string,
      selected: :boolean,
      size: {LINE.MessagingAPI.RichMenuSize, :t}
    ]
  end
end
