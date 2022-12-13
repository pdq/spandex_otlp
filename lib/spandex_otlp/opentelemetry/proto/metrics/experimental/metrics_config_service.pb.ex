defmodule Opentelemetry.Proto.Metrics.Experimental.MetricConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource, 1, type: Opentelemetry.Proto.Resource.V1.Resource)
  field(:last_known_fingerprint, 2, type: :bytes, json_name: "lastKnownFingerprint")
end

defmodule Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse.Schedule.Pattern do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof(:match, 0)

  field(:equals, 1, type: :string, oneof: 0)
  field(:starts_with, 2, type: :string, json_name: "startsWith", oneof: 0)
end

defmodule Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse.Schedule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:exclusion_patterns, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse.Schedule.Pattern,
    json_name: "exclusionPatterns"
  )

  field(:inclusion_patterns, 2,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse.Schedule.Pattern,
    json_name: "inclusionPatterns"
  )

  field(:period_sec, 3, type: :int32, json_name: "periodSec")
end

defmodule Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:fingerprint, 1, type: :bytes)

  field(:schedules, 2,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse.Schedule
  )

  field(:suggested_wait_time_sec, 3, type: :int32, json_name: "suggestedWaitTimeSec")
end

defmodule Opentelemetry.Proto.Metrics.Experimental.MetricConfig.Service do
  @moduledoc false
  use GRPC.Service,
    name: "opentelemetry.proto.metrics.experimental.MetricConfig",
    protoc_gen_elixir_version: "0.10.0"

  rpc(
    :GetMetricConfig,
    Opentelemetry.Proto.Metrics.Experimental.MetricConfigRequest,
    Opentelemetry.Proto.Metrics.Experimental.MetricConfigResponse
  )
end

defmodule Opentelemetry.Proto.Metrics.Experimental.MetricConfig.Stub do
  @moduledoc false
  use GRPC.Stub, service: Opentelemetry.Proto.Metrics.Experimental.MetricConfig.Service
end
