defmodule LINE.MessagingAPI.PnpMessagesRequest do
  @moduledoc """
  Provides struct and type for PnpMessagesRequest
  """

  @type t :: %__MODULE__{
          messages: [LINE.MessagingAPI.Message.t()],
          notificationDisabled: boolean | nil,
          to: String.t()
        }

  defstruct [:messages, :notificationDisabled, :to]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      messages: {:array, {LINE.MessagingAPI.Message, :t}},
      notificationDisabled: :boolean,
      to: :string
    ]
  end
end
