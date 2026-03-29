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

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::figma::mcp()
#
#>
######################################################################
p6df::modules::figma::mcp() {

  p6_js_npm_global_install "figma-mcp"

  p6df::modules::anthropic::mcp::server::add "figma" "npx" "-y" "figma-mcp"
  p6df::modules::openai::mcp::server::add "figma" "npx" "-y" "figma-mcp"

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
# Function: str str = p6df::modules::figma::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 FIGMA_API_TOKEN FIGMA_TOKEN P6_DFZ_PROFILE_FIGMA
#>
######################################################################
p6df::modules::figma::prompt::mod() {
  local str=""
  local profile="$P6_DFZ_PROFILE_FIGMA"
  local api_token="$FIGMA_API_TOKEN"
  local token="$FIGMA_TOKEN"

  if p6_string_blank_NOT "$profile"; then
    str="figma:\t\t  ${profile}:"
    if p6_string_blank_NOT "$api_token"; then
      str=$(p6_string_append "$str" "api" " ")
    fi
    if p6_string_blank_NOT "$token" && [ "$token" != "$api_token" ]; then
      str=$(p6_string_append "$str" "token" "/")
    fi
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::figma::profile::on(profile, code)
#
#  Args:
#	profile -
#	code -
#
#  Environment:	 FIGMA_API_TOKEN FIGMA_TOKEN P6_DFZ_PROFILE_FIGMA
#>
######################################################################
p6df::modules::figma::profile::on() {
  local profile="$1"
  local code="$2"

  p6_run_code "$code"

  p6_env_export "P6_DFZ_PROFILE_FIGMA" "$profile"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::figma::profile::off(code)
#
#  Args:
#	code - shell code block previously passed to profile::on
#
#  Environment:	 FIGMA_API_TOKEN FIGMA_TOKEN P6_DFZ_PROFILE_FIGMA
#>
######################################################################
p6df::modules::figma::profile::off() {
  local code="$1"

  p6_env_unset_from_code "$code"
  p6_env_export_un P6_DFZ_PROFILE_FIGMA

  p6_return_void
}
