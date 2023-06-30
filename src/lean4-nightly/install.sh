#!/bin/sh
set -e

echo "Activating feature 'lean4-nightly'"

# The 'install.sh' entrypoint script is always executed as the root user.
#
# These following environment variables are passed in by the dev container CLI.
# These may be useful in instances where the context of the final
# remoteUser or containerUser is useful.
# For more details, see https://containers.dev/implementors/features#user-env-var
echo "The effective dev container remoteUser is '$_REMOTE_USER'"
echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

echo "The effective dev container containerUser is '$_CONTAINER_USER'"
echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"

cat > /usr/local/bin/lean4-feature \
<< EOF
#!/bin/sh
ELAN_HOME=/usr/local/elan
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain leanprover/lean4:nightly; \
    chmod -R a+w $ELAN_HOME; \
    elan --version; \
    lean --version; \
    leanc --version; \
    lake --version;
EOF

chmod +x /usr/local/bin/lean4-feature
