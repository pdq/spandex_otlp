defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.ExportTraceServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource_spans, 1,
    repeated: true,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.ResourceSpans,
    json_name: "resourceSpans"
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.ExportTraceServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.TraceService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "opentelemetry.proto.collector.trace.v1.TraceService",
    protoc_gen_elixir_version: "0.10.0"

  rpc(
    :Export,
    SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.ExportTraceServiceRequest,
    SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.ExportTraceServiceResponse
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.TraceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: SpandexOTLP.Opentelemetry.Proto.Collector.Trace.V1.TraceService.Service
end
