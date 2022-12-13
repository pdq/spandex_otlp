defmodule Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource_metrics, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.ResourceMetrics,
    json_name: "resourceMetrics"
  )
end

defmodule Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end

defmodule Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "opentelemetry.proto.collector.metrics.v1.MetricsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc(
    :Export,
    Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceRequest,
    Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceResponse
  )
end

defmodule Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Service
end
