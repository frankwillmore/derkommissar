spack find --format  "  {name}:newline    externals:newline    - spec: {name}newline      prefix: {prefix}newline        buildable: Falsenewline" |sed -e "s/newline/\n/g" >> system_packages.yaml
