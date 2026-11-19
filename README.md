# Erlang-Red Node-RED template

This is the codebase for the Node-RED template installation that provides the [frontend floweditor](https://github.com/gorenje/erlang-red) for Erlang-Red.

The basic workflow is that node packages used inside of Erlang-Red are updated here in this Node-RED installation and then installed via a [script](https://github.com/gorenje/erlang-red/blob/main/priv/node-red-frontend/retrieve.sh) into the Erlang-Red frontend. Any backend code required is then implemented in Erlang-Red as [Erlang code](https://github.com/gorenje/erlang-red/tree/main/src/nodes).

Changes are commited to the Erlang-Red project as separate commits prefixed with [`floweditor:`](https://github.com/search?q=repo%3Agorenje%2Ferlang-red+floweditor&type=commits)

## Starting

```
git clone git@github.com:gorenje/erlang-red-editor-template.git
cd erlang-red-editor-template
make start-nodered
```

