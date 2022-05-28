defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.ConstantSampler.ConstantDecision do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:ALWAYS_OFF, 0)
  field(:ALWAYS_ON, 1)
  field(:ALWAYS_PARENT, 2)
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.TraceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof(:sampler, 0)

  field(:constant_sampler, 1,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.ConstantSampler,
    json_name: "constantSampler",
    oneof: 0
  )

  field(:trace_id_ratio_based, 2,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.TraceIdRatioBased,
    json_name: "traceIdRatioBased",
    oneof: 0
  )

  field(:rate_limiting_sampler, 3,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.RateLimitingSampler,
    json_name: "rateLimitingSampler",
    oneof: 0
  )

  field(:max_number_of_attributes, 4, type: :int64, json_name: "maxNumberOfAttributes")
  field(:max_number_of_timed_events, 5, type: :int64, json_name: "maxNumberOfTimedEvents")

  field(:max_number_of_attributes_per_timed_event, 6,
    type: :int64,
    json_name: "maxNumberOfAttributesPerTimedEvent"
  )

  field(:max_number_of_links, 7, type: :int64, json_name: "maxNumberOfLinks")

  field(:max_number_of_attributes_per_link, 8,
    type: :int64,
    json_name: "maxNumberOfAttributesPerLink"
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.ConstantSampler do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:decision, 1,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.ConstantSampler.ConstantDecision,
    enum: true
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.TraceIdRatioBased do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:samplingRatio, 1, type: :double)
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.RateLimitingSampler do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:qps, 1, type: :int64)
end
