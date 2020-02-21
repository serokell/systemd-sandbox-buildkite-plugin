# systemd sandboxing plugin

This is a Buildkite plugin to wrap your pipelines in a sandboxed transient
systemd unit that isolates most of the host system and makes excellent
pancakes.

## Usage

Use in your pipeline as follows:

```yaml
steps:
  - label: run a thing
    command: 'echo hello world'
    plugins:
      serokell/systemd-sandboxing#v1.0.0: ~
```

## Development

A `nix-shell` environment is provided with all dependencies. You can run the
test suite with `bats tests`, or use the `bk` tool to run the pipeline in
a local `buildkite-agent`.
