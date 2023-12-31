defmodule LINE.MessagingAPI.GroupSummaryResponse do
  @moduledoc """
  Provides struct and type for GroupSummaryResponse
  """

  @type t :: %__MODULE__{groupId: String.t(), groupName: String.t(), pictureUrl: String.t() | nil}

  defstruct [:groupId, :groupName, :pictureUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [groupId: :string, groupName: :string, pictureUrl: :string]
  end
end
