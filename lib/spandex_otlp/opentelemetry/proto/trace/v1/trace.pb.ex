defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span.SpanKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:SPAN_KIND_UNSPECIFIED, 0)
  field(:SPAN_KIND_INTERNAL, 1)
  field(:SPAN_KIND_SERVER, 2)
  field(:SPAN_KIND_CLIENT, 3)
  field(:SPAN_KIND_PRODUCER, 4)
  field(:SPAN_KIND_CONSUMER, 5)
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Status.DeprecatedStatusCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:DEPRECATED_STATUS_CODE_OK, 0)
  field(:DEPRECATED_STATUS_CODE_CANCELLED, 1)
  field(:DEPRECATED_STATUS_CODE_UNKNOWN_ERROR, 2)
  field(:DEPRECATED_STATUS_CODE_INVALID_ARGUMENT, 3)
  field(:DEPRECATED_STATUS_CODE_DEADLINE_EXCEEDED, 4)
  field(:DEPRECATED_STATUS_CODE_NOT_FOUND, 5)
  field(:DEPRECATED_STATUS_CODE_ALREADY_EXISTS, 6)
  field(:DEPRECATED_STATUS_CODE_PERMISSION_DENIED, 7)
  field(:DEPRECATED_STATUS_CODE_RESOURCE_EXHAUSTED, 8)
  field(:DEPRECATED_STATUS_CODE_FAILED_PRECONDITION, 9)
  field(:DEPRECATED_STATUS_CODE_ABORTED, 10)
  field(:DEPRECATED_STATUS_CODE_OUT_OF_RANGE, 11)
  field(:DEPRECATED_STATUS_CODE_UNIMPLEMENTED, 12)
  field(:DEPRECATED_STATUS_CODE_INTERNAL_ERROR, 13)
  field(:DEPRECATED_STATUS_CODE_UNAVAILABLE, 14)
  field(:DEPRECATED_STATUS_CODE_DATA_LOSS, 15)
  field(:DEPRECATED_STATUS_CODE_UNAUTHENTICATED, 16)
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Status.StatusCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:STATUS_CODE_UNSET, 0)
  field(:STATUS_CODE_OK, 1)
  field(:STATUS_CODE_ERROR, 2)
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.ResourceSpans do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource, 1, type: SpandexOTLP.Opentelemetry.Proto.Resource.V1.Resource)

  field(:instrumentation_library_spans, 2,
    repeated: true,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.InstrumentationLibrarySpans,
    json_name: "instrumentationLibrarySpans"
  )

  field(:schema_url, 3, type: :string, json_name: "schemaUrl")
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.InstrumentationLibrarySpans do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:instrumentation_library, 1,
    type: SpandexOTLP.Opentelemetry.Proto.Common.V1.InstrumentationLibrary,
    json_name: "instrumentationLibrary"
  )

  field(:spans, 2, repeated: true, type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span)
  field(:schema_url, 3, type: :string, json_name: "schemaUrl")
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:time_unix_nano, 1, type: :fixed64, json_name: "timeUnixNano")
  field(:name, 2, type: :string)
  field(:attributes, 3, repeated: true, type: SpandexOTLP.Opentelemetry.Proto.Common.V1.KeyValue)
  field(:dropped_attributes_count, 4, type: :uint32, json_name: "droppedAttributesCount")
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span.Link do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:trace_id, 1, type: :bytes, json_name: "traceId")
  field(:span_id, 2, type: :bytes, json_name: "spanId")
  field(:trace_state, 3, type: :string, json_name: "traceState")
  field(:attributes, 4, repeated: true, type: SpandexOTLP.Opentelemetry.Proto.Common.V1.KeyValue)
  field(:dropped_attributes_count, 5, type: :uint32, json_name: "droppedAttributesCount")
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:trace_id, 1, type: :bytes, json_name: "traceId")
  field(:span_id, 2, type: :bytes, json_name: "spanId")
  field(:trace_state, 3, type: :string, json_name: "traceState")
  field(:parent_span_id, 4, type: :bytes, json_name: "parentSpanId")
  field(:name, 5, type: :string)
  field(:kind, 6, type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span.SpanKind, enum: true)
  field(:start_time_unix_nano, 7, type: :fixed64, json_name: "startTimeUnixNano")
  field(:end_time_unix_nano, 8, type: :fixed64, json_name: "endTimeUnixNano")
  field(:attributes, 9, repeated: true, type: SpandexOTLP.Opentelemetry.Proto.Common.V1.KeyValue)
  field(:dropped_attributes_count, 10, type: :uint32, json_name: "droppedAttributesCount")
  field(:events, 11, repeated: true, type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span.Event)
  field(:dropped_events_count, 12, type: :uint32, json_name: "droppedEventsCount")
  field(:links, 13, repeated: true, type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Span.Link)
  field(:dropped_links_count, 14, type: :uint32, json_name: "droppedLinksCount")
  field(:status, 15, type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Status)
end

defmodule SpandexOTLP.Opentelemetry.Proto.Trace.V1.Status do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:deprecated_code, 1,
    type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Status.DeprecatedStatusCode,
    json_name: "deprecatedCode",
    enum: true,
    deprecated: true
  )

  field(:message, 2, type: :string)
  field(:code, 3, type: SpandexOTLP.Opentelemetry.Proto.Trace.V1.Status.StatusCode, enum: true)
end
