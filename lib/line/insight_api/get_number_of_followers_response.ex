defmodule LINE.InsightAPI.GetNumberOfFollowersResponse do
  @moduledoc """
  Provides struct and type for GetNumberOfFollowersResponse
  """

  @type t :: %__MODULE__{
          blocks: integer | nil,
          followers: integer | nil,
          status: String.t() | nil,
          targetedReaches: integer | nil
        }

  defstruct [:blocks, :followers, :status, :targetedReaches]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [blocks: :integer, followers: :integer, status: :string, targetedReaches: :integer]
  end
end
