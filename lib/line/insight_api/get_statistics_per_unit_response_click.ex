defmodule LINE.InsightAPI.GetStatisticsPerUnitResponseClick do
  @moduledoc """
  Provides struct and type for GetStatisticsPerUnitResponseClick
  """

  @type t :: %__MODULE__{
          click: integer | nil,
          seq: integer,
          uniqueClick: integer | nil,
          uniqueClickOfRequest: integer | nil,
          url: String.t()
        }

  defstruct [:click, :seq, :uniqueClick, :uniqueClickOfRequest, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      click: :integer,
      seq: :integer,
      uniqueClick: :integer,
      uniqueClickOfRequest: :integer,
      url: :string
    ]
  end
end
