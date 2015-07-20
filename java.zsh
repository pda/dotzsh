set_java_home() {
  if [ -x /usr/libexec/java_home ]; then
    local tmp=$(/usr/libexec/java_home --failfast 2>/dev/null)
    if [ -n "$tmp" ]; then
      export JAVA_HOME=$(/usr/libexec/java_home)
    fi
  fi
}

set_java_home
