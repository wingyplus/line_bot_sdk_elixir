defmodule LINE.MessagingAPI.NarrowcastProgressResponse do
  @moduledoc """
  Provides struct and type for NarrowcastProgressResponse
  """

  @type t :: %__MODULE__{
          acceptedTime: String.t(),
          completedTime: String.t() | nil,
          errorCode: integer | nil,
          failedDescription: String.t() | nil,
          failureCount: integer | nil,
          phase: String.t(),
          successCount: integer | nil,
          targetCount: integer | nil
        }

  defstruct [
    :acceptedTime,
    :completedTime,
    :errorCode,
    :failedDescription,
    :failureCount,
    :phase,
    :successCount,
    :targetCount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acceptedTime: :string,
      completedTime: :string,
      errorCode: :integer,
      failedDescription: :string,
      failureCount: :integer,
      phase: :string,
      successCount: :integer,
      targetCount: :integer
    ]
  end
end
