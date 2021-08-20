# terraform-configuration-aliases-action

> GitHub Action for generating aliased provider blocks that satisfy required configuration aliases

Terraform modules can accept multiple instances of a provider using [`configuration_aliases`](https://www.terraform.io/docs/language/modules/develop/providers.html#provider-aliases-within-modules). When used, the `providers` meta-argument will be included to pass in configured provider instances for each alias. However, this means that the module no longer passes `terraform validate` on its own—it is not a complete configuration. This action inspects a Terraform module, finds all configuration aliases, and writes a `.tf.json` file that defines matching `provider` blocks. This makes the module a complete configuration, allowing `terraform validate` to operate.

## Usage

```yaml
steps:
  - uses: bendrucker/terraform-configuration-aliases-action@v1
```

### Inputs

| Name | Description            | Default |
|------|------------------------|---------|
| path | The path to the module | `''`    |
