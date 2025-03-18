local k = import 'konn/main.libsonnet';

k.feature(
  // name='co.topvine.namespace',
  props={
    create: true,
    inject: true,
  },
  configs=[
    import 'manifests/namespace.libsonnet',
  ],
  extensions=[
    import 'extensions/withNamespaces.libsonnet',
  ]
) + {
  // adds default namespace feature if props.namespace exists
  default:: function(ctx, props) if std.objectHas(props, 'namespace') then (
    self.configure({
      namespace: props.namespace,
    })
  ),

  // adds namespace feature with manifest=false if props.namespace exists
  noManifest:: function(ctx, props) if std.objectHas(props, 'namespace') then (
    self.configure({
      namespace: props.namespace,
      manifest: false,
    })
  ),
}
