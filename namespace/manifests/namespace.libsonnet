local k = import 'konn/main.libsonnet';

//
local ns = (import 'k8s-libsonnet/1.32/main.libsonnet').core.v1.namespace;

k.manifest(
  function(ctx, props) [
    if std.objectHas(props, 'namespace') && props.manifest then (
      ns.new(props.namespace)
    ),
  ],
  {
    namespace: 'default',
    manifest: true,
  }
)
