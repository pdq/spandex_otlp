defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource_metrics, 1,
    repeated: true,
    type: SpandexOTLP.Opentelemetry.Proto.Metrics.V1.ResourceMetrics,
    json_name: "resourceMetrics"
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "opentelemetry.proto.collector.metrics.v1.MetricsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc(
    :Export,
    SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceRequest,
    SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceResponse
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: SpandexOTLP.Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Service
end
