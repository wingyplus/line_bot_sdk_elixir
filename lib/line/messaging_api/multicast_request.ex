defmodule LINE.MessagingAPI.MulticastRequest do
  @moduledoc """
  Provides struct and type for MulticastRequest
  """

  @type t :: %__MODULE__{
          customAggregationUnits: [String.t()] | nil,
          messages: [LINE.MessagingAPI.Message.t()],
          notificationDisabled: boolean | nil,
          to: [String.t()]
        }

  defstruct [:customAggregationUnits, :messages, :notificationDisabled, :to]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      customAggregationUnits: {:array, :string},
      messages: {:array, {LINE.MessagingAPI.Message, :t}},
      notificationDisabled: :boolean,
      to: {:array, :string}
    ]
  end
end
