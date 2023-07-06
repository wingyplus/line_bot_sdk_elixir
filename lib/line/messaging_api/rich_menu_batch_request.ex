defmodule LINE.MessagingAPI.RichMenuBatchRequest do
  @moduledoc """
  Provides struct and type for RichMenuBatchRequest
  """

  @type t :: %__MODULE__{
          operations: [LINE.MessagingAPI.RichMenuBatchOperation.t()],
          resumeRequestKey: String.t() | nil
        }

  defstruct [:operations, :resumeRequestKey]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      operations: {:array, {LINE.MessagingAPI.RichMenuBatchOperation, :t}},
      resumeRequestKey: :string
    ]
  end
end
