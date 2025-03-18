local k = import 'konn/main.libsonnet';

//
local app = import '../main.libsonnet';

app.init(
  props=k.yaml(importstr 'parameters.yaml'),
)
