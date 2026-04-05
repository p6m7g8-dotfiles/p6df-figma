# shellcheck shell=bash
######################################################################
p6df::modules::figma::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
  )
}

######################################################################
p6df::modules::figma::aliases::init() {
  local _module="$1"
  local _dir="$2"

  p6_alias "fcli" "figma-export"

  p6_return_void
}

######################################################################
p6df::modules::figma::langs() {

  p6_js_npm_global_install "@figma-export/cli"

  p6_return_void
}

######################################################################
p6df::modules::figma::mcp() {

  p6_js_npm_global_install "figma-mcp"

  p6df::modules::anthropic::mcp::server::add "figma" "npx" "-y" "figma-mcp"
  p6df::modules::openai::mcp::server::add "figma" "npx" "-y" "figma-mcp"

  p6_return_void
}

######################################################################
p6df::modules::figma::profile::mod() {

  p6_return_words 'figma' '$FIGMA_API_TOKEN'
}
######################################################################
#<
#
# Function: p6df::modules::figma::deps()
#
#>
######################################################################
#<
#
# Function: p6df::modules::figma::langs()
#
#>
######################################################################
#<
#
# Function: p6df::modules::figma::mcp()
#
#>
######################################################################
#<
#
# Function: p6df::modules::figma::aliases::init()
#
#>
######################################################################
#<
#
# Function: words figma $FIGMA_API_TOKEN = p6df::modules::figma::profile::mod()
#
#  Returns:
#	words - figma $FIGMA_API_TOKEN
#
#  Environment:	 FIGMA_API_TOKEN
#>
