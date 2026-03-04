# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::figma::deps()
#
#>
######################################################################
p6df::modules::figma::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
  )
}

######################################################################
#<
#
# Function: p6df::modules::figma::langs()
#
#>
######################################################################
p6df::modules::figma::langs() {

  p6_js_npm_global_install "@figma-export/cli"
  p6_js_npm_global_install "figma-developer-mcp"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::figma::aliases::init()
#
#>
######################################################################
p6df::modules::figma::aliases::init() {

  p6_alias "fcli" "figma-export"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::figma::profile::on(profile, token)
#
#  Args:
#	profile -
#	token -
#
#  Environment:	 FIGMA_API_TOKEN FIGMA_TOKEN P6_DFZ_PROFILE_FIGMA
#>
######################################################################
p6df::modules::figma::profile::on() {
  local profile="$1"
  local token="$2"

  p6_env_export "P6_DFZ_PROFILE_FIGMA" "$profile"
  p6_env_export "FIGMA_API_TOKEN" "$token"
  p6_env_export "FIGMA_TOKEN" "$token"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::figma::profile::off()
#
#  Environment:	 FIGMA_API_TOKEN FIGMA_TOKEN P6_DFZ_PROFILE_FIGMA
#>
######################################################################
p6df::modules::figma::profile::off() {

  p6_env_export_un P6_DFZ_PROFILE_FIGMA
  p6_env_export_un FIGMA_API_TOKEN
  p6_env_export_un FIGMA_TOKEN

  p6_return_void
}
