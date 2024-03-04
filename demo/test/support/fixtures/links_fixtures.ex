defmodule Demo.LinksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Demo.Links` context.
  """

  @doc """
  Generate a link.
  """
  def link_fixture(attrs \\ %{}) do
    {:ok, link} =
      attrs
      |> Enum.into(%{
        url: "some url"
      })
      |> Demo.Links.create_link()

    link
  end
end
