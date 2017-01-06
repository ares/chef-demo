demo Cookbook
=============

Cookbook to demonstrate integration of Foreman and Chef

Usage
=====

Just include `demo` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[demo]"
  ]
}
```

