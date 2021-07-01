echo "packages:" > system_packages.yaml
echo "" >> system_packages.yaml
#spack find --format  "  {name}:newline    externals:newline    - spec: {name}newline      prefix: {prefix}newline      buildable: Falsenewline" |sed -e "s/newline/\n/g" >> system_packages.yaml
#spack find --format  "  {name}:newline    version:newline    - {version}newline    externals:newline    - spec: {name}newline      prefix: {prefix}newline      buildable: Falsenewline" |sed -e "s/newline/\n/g" >> system_packages.yaml
spack find --format "QZ{name}:newline    version:newline    - {version}newline    externals:newline    - spec: {name}@{version}newline      prefix: {prefix}newline      buildable: Falsenewline" |sed -e "s/newline/\n/g" | sed -e "s/QZ/  /" >> system_packages.yaml
echo "Generated system_packages.yaml."
