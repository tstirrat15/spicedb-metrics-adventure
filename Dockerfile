# The dockerfile for the datadog agent
FROM gcr.io/datadoghq/agent:latest
COPY datadog_spicedb-1.0.0-py3-none-any.whl datadog_spicedb-1.0.0-py3-none-any.whl
RUN agent integration install -r -t -w /datadog_spicedb-1.0.0-py3-none-any.whl
