local k = import 'konn/main.libsonnet';

k.lib.config.new(function(ctx, props) {

  apiVersion: 'v1',
  kind: 'Service',
  metadata: {
    name: 'default',
  },
})
