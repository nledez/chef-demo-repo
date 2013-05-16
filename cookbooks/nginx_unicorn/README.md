nginx_unicorn Cookbook
======================
This cookbook install & configure Nginx. At the end you can launch a
Ruby Stack.

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - nginx_unicorn needs toaster to brown your bagel.

Attributes
----------
TODO: List you cookbook attributes here.

Usage
-----
#### nginx_unicorn::default

Just include `nginx_unicorn` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nginx_unicorn]"
  ]
}
```

License and Authors
-------------------
Authors: Nicolas Ledez
