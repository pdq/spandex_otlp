defmodule SpandexOTLP.Adapter do
  @moduledoc """
  A OTLP APM implementation for Spandex.
  """

  @behaviour Spandex.Adapter

  @impl true
  def span_id do
    10_000_000..99_999_999
    |> Enum.random()
    |> to_string()
    |> Base.encode16(case: :lower)
  end

  @impl true
  def trace_id, do: random_binary(16)

  @impl true
  def default_sender, do: SpandexOTLP.Sender

  @impl true
  def distributed_context(_arg1, _arg2) do
    # Not yet implemented
    {:error, :no_distributed_trace}
  end

  @impl true
  def inject_context(headers, _arg2, _arg3), do: headers

  @impl true
  def now, do: :os.system_time(:nano_seconds)

  defp random_binary(bytes) do
    1..bytes
    |> Enum.map(fn _ -> :rand.uniform(255) end)
    |> :binary.list_to_bin()
    |> Base.encode16(case: :lower)
  end
end
