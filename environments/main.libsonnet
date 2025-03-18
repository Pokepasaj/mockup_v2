local k = import 'konn/main.libsonnet';

k.app(
  features=[
    (import 'namespace/main.libsonnet').noManifest,

    k.fromYaml([
      importstr 'templates/deploy-n8n.yaml',
      importstr 'templates/secret-n8n.yaml',
      importstr 'templates/svc-n8n.yaml',
      importstr 'templates/cm-n8n.yaml',
      importstr 'templates/ing-n8n.yaml',


    ]),
  ]
)
