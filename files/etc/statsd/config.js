{
  graphitePort: 2003
, graphiteHost: "{{graphite_host}}"
, port: 8125
, backends: [ "./backends/graphite" ]
, graphite: {
    legacyNamespace: false
  }
}
