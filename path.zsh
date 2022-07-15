# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Load python binaries
export PATH="$(pyenv root)/shims:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
