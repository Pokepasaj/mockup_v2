local k = import 'konn/main.libsonnet';

// adds namespaces to all config kinds except Namespace
k.extension(
  function(ctx, target, props) (
    if std.isObject(target) && std.objectHas(target, 'kind') && target.kind != 'Namespace' then (
      target + (
        if std.objectHas(props, 'namespace') then
          { metadata+: { namespace: props.namespace } }
        else
          {}
      )
    )
    else (
      target
    )
  )
)
