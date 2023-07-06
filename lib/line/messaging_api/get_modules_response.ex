defmodule LINE.MessagingAPI.GetModulesResponse do
  @moduledoc """
  Provides struct and type for GetModulesResponse
  """

  @type t :: %__MODULE__{bots: [LINE.MessagingAPI.ModuleBot.t()], next: String.t() | nil}

  defstruct [:bots, :next]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bots: {:array, {LINE.MessagingAPI.ModuleBot, :t}}, next: :string]
  end
end
