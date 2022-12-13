defmodule SpandexOTLP.TestServer do
  @moduledoc false

  use GRPC.Server,
    service: Opentelemetry.Proto.Collector.Trace.V1.TraceService.Service

  alias Opentelemetry.Proto.Collector.Trace.V1.ExportTraceServiceResponse

  def export(request, _stream) do
    SpandexOTLP.RequestStore.put_request(request)
    ExportTraceServiceResponse.new()
  end
end
