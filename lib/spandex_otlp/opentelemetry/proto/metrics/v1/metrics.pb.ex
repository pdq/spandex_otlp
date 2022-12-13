defmodule Opentelemetry.Proto.Metrics.V1.AggregationTemporality do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:AGGREGATION_TEMPORALITY_UNSPECIFIED, 0)
  field(:AGGREGATION_TEMPORALITY_DELTA, 1)
  field(:AGGREGATION_TEMPORALITY_CUMULATIVE, 2)
end

defmodule Opentelemetry.Proto.Metrics.V1.ResourceMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource, 1, type: Opentelemetry.Proto.Resource.V1.Resource)

  field(:instrumentation_library_metrics, 2,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.InstrumentationLibraryMetrics,
    json_name: "instrumentationLibraryMetrics"
  )

  field(:schema_url, 3, type: :string, json_name: "schemaUrl")
end

defmodule Opentelemetry.Proto.Metrics.V1.InstrumentationLibraryMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:instrumentation_library, 1,
    type: Opentelemetry.Proto.Common.V1.InstrumentationLibrary,
    json_name: "instrumentationLibrary"
  )

  field(:metrics, 2, repeated: true, type: Opentelemetry.Proto.Metrics.V1.Metric)
  field(:schema_url, 3, type: :string, json_name: "schemaUrl")
end

defmodule Opentelemetry.Proto.Metrics.V1.Metric do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof(:data, 0)

  field(:name, 1, type: :string)
  field(:description, 2, type: :string)
  field(:unit, 3, type: :string)

  field(:int_gauge, 4,
    type: Opentelemetry.Proto.Metrics.V1.IntGauge,
    json_name: "intGauge",
    oneof: 0,
    deprecated: true
  )

  field(:gauge, 5, type: Opentelemetry.Proto.Metrics.V1.Gauge, oneof: 0)

  field(:int_sum, 6,
    type: Opentelemetry.Proto.Metrics.V1.IntSum,
    json_name: "intSum",
    oneof: 0,
    deprecated: true
  )

  field(:sum, 7, type: Opentelemetry.Proto.Metrics.V1.Sum, oneof: 0)

  field(:int_histogram, 8,
    type: Opentelemetry.Proto.Metrics.V1.IntHistogram,
    json_name: "intHistogram",
    oneof: 0,
    deprecated: true
  )

  field(:histogram, 9, type: Opentelemetry.Proto.Metrics.V1.Histogram, oneof: 0)
  field(:summary, 11, type: Opentelemetry.Proto.Metrics.V1.Summary, oneof: 0)
end

defmodule Opentelemetry.Proto.Metrics.V1.IntGauge do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.IntDataPoint,
    json_name: "dataPoints"
  )
end

defmodule Opentelemetry.Proto.Metrics.V1.Gauge do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.NumberDataPoint,
    json_name: "dataPoints"
  )
end

defmodule Opentelemetry.Proto.Metrics.V1.IntSum do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.IntDataPoint,
    json_name: "dataPoints"
  )

  field(:aggregation_temporality, 2,
    type: Opentelemetry.Proto.Metrics.V1.AggregationTemporality,
    json_name: "aggregationTemporality",
    enum: true
  )

  field(:is_monotonic, 3, type: :bool, json_name: "isMonotonic")
end

defmodule Opentelemetry.Proto.Metrics.V1.Sum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.NumberDataPoint,
    json_name: "dataPoints"
  )

  field(:aggregation_temporality, 2,
    type: Opentelemetry.Proto.Metrics.V1.AggregationTemporality,
    json_name: "aggregationTemporality",
    enum: true
  )

  field(:is_monotonic, 3, type: :bool, json_name: "isMonotonic")
end

defmodule Opentelemetry.Proto.Metrics.V1.IntHistogram do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.IntHistogramDataPoint,
    json_name: "dataPoints"
  )

  field(:aggregation_temporality, 2,
    type: Opentelemetry.Proto.Metrics.V1.AggregationTemporality,
    json_name: "aggregationTemporality",
    enum: true
  )
end

defmodule Opentelemetry.Proto.Metrics.V1.Histogram do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.HistogramDataPoint,
    json_name: "dataPoints"
  )

  field(:aggregation_temporality, 2,
    type: Opentelemetry.Proto.Metrics.V1.AggregationTemporality,
    json_name: "aggregationTemporality",
    enum: true
  )
end

defmodule Opentelemetry.Proto.Metrics.V1.Summary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:data_points, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.SummaryDataPoint,
    json_name: "dataPoints"
  )
end

defmodule Opentelemetry.Proto.Metrics.V1.IntDataPoint do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:labels, 1, repeated: true, type: Opentelemetry.Proto.Common.V1.StringKeyValue)
  field(:start_time_unix_nano, 2, type: :fixed64, json_name: "startTimeUnixNano")
  field(:time_unix_nano, 3, type: :fixed64, json_name: "timeUnixNano")
  field(:value, 4, type: :sfixed64)
  field(:exemplars, 5, repeated: true, type: Opentelemetry.Proto.Metrics.V1.IntExemplar)
end

defmodule Opentelemetry.Proto.Metrics.V1.NumberDataPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof(:value, 0)

  field(:attributes, 7, repeated: true, type: Opentelemetry.Proto.Common.V1.KeyValue)

  field(:labels, 1,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.StringKeyValue,
    deprecated: true
  )

  field(:start_time_unix_nano, 2, type: :fixed64, json_name: "startTimeUnixNano")
  field(:time_unix_nano, 3, type: :fixed64, json_name: "timeUnixNano")
  field(:as_double, 4, type: :double, json_name: "asDouble", oneof: 0)
  field(:as_int, 6, type: :sfixed64, json_name: "asInt", oneof: 0)
  field(:exemplars, 5, repeated: true, type: Opentelemetry.Proto.Metrics.V1.Exemplar)
end

defmodule Opentelemetry.Proto.Metrics.V1.IntHistogramDataPoint do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:labels, 1, repeated: true, type: Opentelemetry.Proto.Common.V1.StringKeyValue)
  field(:start_time_unix_nano, 2, type: :fixed64, json_name: "startTimeUnixNano")
  field(:time_unix_nano, 3, type: :fixed64, json_name: "timeUnixNano")
  field(:count, 4, type: :fixed64)
  field(:sum, 5, type: :sfixed64)
  field(:bucket_counts, 6, repeated: true, type: :fixed64, json_name: "bucketCounts")
  field(:explicit_bounds, 7, repeated: true, type: :double, json_name: "explicitBounds")
  field(:exemplars, 8, repeated: true, type: Opentelemetry.Proto.Metrics.V1.IntExemplar)
end

defmodule Opentelemetry.Proto.Metrics.V1.HistogramDataPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:attributes, 9, repeated: true, type: Opentelemetry.Proto.Common.V1.KeyValue)

  field(:labels, 1,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.StringKeyValue,
    deprecated: true
  )

  field(:start_time_unix_nano, 2, type: :fixed64, json_name: "startTimeUnixNano")
  field(:time_unix_nano, 3, type: :fixed64, json_name: "timeUnixNano")
  field(:count, 4, type: :fixed64)
  field(:sum, 5, type: :double)
  field(:bucket_counts, 6, repeated: true, type: :fixed64, json_name: "bucketCounts")
  field(:explicit_bounds, 7, repeated: true, type: :double, json_name: "explicitBounds")
  field(:exemplars, 8, repeated: true, type: Opentelemetry.Proto.Metrics.V1.Exemplar)
end

defmodule Opentelemetry.Proto.Metrics.V1.SummaryDataPoint.ValueAtQuantile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:quantile, 1, type: :double)
  field(:value, 2, type: :double)
end

defmodule Opentelemetry.Proto.Metrics.V1.SummaryDataPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:attributes, 7, repeated: true, type: Opentelemetry.Proto.Common.V1.KeyValue)

  field(:labels, 1,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.StringKeyValue,
    deprecated: true
  )

  field(:start_time_unix_nano, 2, type: :fixed64, json_name: "startTimeUnixNano")
  field(:time_unix_nano, 3, type: :fixed64, json_name: "timeUnixNano")
  field(:count, 4, type: :fixed64)
  field(:sum, 5, type: :double)

  field(:quantile_values, 6,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.SummaryDataPoint.ValueAtQuantile,
    json_name: "quantileValues"
  )
end

defmodule Opentelemetry.Proto.Metrics.V1.IntExemplar do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:filtered_labels, 1,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.StringKeyValue,
    json_name: "filteredLabels"
  )

  field(:time_unix_nano, 2, type: :fixed64, json_name: "timeUnixNano")
  field(:value, 3, type: :sfixed64)
  field(:span_id, 4, type: :bytes, json_name: "spanId")
  field(:trace_id, 5, type: :bytes, json_name: "traceId")
end

defmodule Opentelemetry.Proto.Metrics.V1.Exemplar do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof(:value, 0)

  field(:filtered_attributes, 7,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.KeyValue,
    json_name: "filteredAttributes"
  )

  field(:filtered_labels, 1,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.StringKeyValue,
    json_name: "filteredLabels",
    deprecated: true
  )

  field(:time_unix_nano, 2, type: :fixed64, json_name: "timeUnixNano")
  field(:as_double, 3, type: :double, json_name: "asDouble", oneof: 0)
  field(:as_int, 6, type: :sfixed64, json_name: "asInt", oneof: 0)
  field(:span_id, 4, type: :bytes, json_name: "spanId")
  field(:trace_id, 5, type: :bytes, json_name: "traceId")
end
