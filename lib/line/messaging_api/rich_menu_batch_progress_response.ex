defmodule LINE.MessagingAPI.RichMenuBatchProgressResponse do
  @moduledoc """
  Provides struct and type for RichMenuBatchProgressResponse
  """

  @type t :: %__MODULE__{
          acceptedTime: String.t(),
          completedTime: String.t() | nil,
          phase: String.t()
        }

  defstruct [:acceptedTime, :completedTime, :phase]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [acceptedTime: :string, completedTime: :string, phase: :string]
  end
end
