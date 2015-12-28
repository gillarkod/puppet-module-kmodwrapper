# Class: kmodwrapper
# ===========================
#
# Full description of class kmodwrapper here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class kmodwrapper (
  $aliases                = undef,
  $aliases_hiera_merge    = true,
  $blacklists             = undef,
  $blacklists_hiera_merge = true,
  $installs               = undef,
  $installs_hiera_merge   = true,
  $loads                  = undef,
  $loads_hiera_merge      = true,
  $options                = undef,
  $options_hiera_merge    = true,
  $settings               = undef,
  $settings_hiera_merge   = true,
  ) {
    include ::kmod
    if is_string($aliases_hiera_merge) {
      $aliases_hiera_merge_real = str2bool($aliases_hiera_merge)
    } else {
      $aliases_hiera_merge_real = $aliases_hiera_merge
    }
    validate_bool($aliases_hiera_merge_real)

    if is_string($blacklists_hiera_merge) {
      $blacklists_hiera_merge_real = str2bool($blacklists_hiera_merge)
    } else {
      $blacklists_hiera_merge_real = $blacklists_hiera_merge
    }
    validate_bool($blacklists_hiera_merge_real)

    if is_string($installs_hiera_merge) {
      $installs_hiera_merge_real = str2bool($installs_hiera_merge)
    } else {
      $installs_hiera_merge_real = $installs_hiera_merge
    }
    validate_bool($installs_hiera_merge_real)

    if is_string($loads_hiera_merge) {
      $loads_hiera_merge_real = str2bool($loads_hiera_merge)
    } else {
      $loads_hiera_merge_real = $loads_hiera_merge
    }
    validate_bool($loads_hiera_merge_real)

    if is_string($options_hiera_merge) {
      $options_hiera_merge_real = str2bool($options_hiera_merge)
    } else {
      $options_hiera_merge_real = $options_hiera_merge
    }
    validate_bool($options_hiera_merge_real)

    if is_string($settings_hiera_merge) {
      $settings_hiera_merge_real = str2bool($settings_hiera_merge)
    } else {
      $settings_hiera_merge_real = $settings_hiera_merge
    }
    validate_bool($settings_hiera_merge_real)

    if $aliases != undef {
      if $aliases_hiera_merge_real == true {
        $aliases_real = hiera_hash('kmodwrapper::aliases')
      } else {
        $aliases_real = $aliases
      }
      validate_hash($aliases_real)
      create_resources('kmod::alias',$aliases_real)
    }

    if $blacklists != undef {
      if $blacklists_hiera_merge_real == true {
        $blacklists_real = hiera_hash('kmodwrapper::blacklists')
      } else {
        $blacklists_real = $blacklists
      }
      validate_hash($blacklists_real)
      create_resources('kmod::blacklist',$blacklists_real)
    }

    if $installs != undef {
      if $installs_hiera_merge_real == true {
        $installs_real = hiera_hash('kmodwrapper::installs')
      } else {
        $installs_real = $installs
      }
      validate_hash($installs_real)
      create_resources('kmod::install',$installs_real)
    }

    if $loads != undef {
      if $loads_hiera_merge_real == true {
        $loads_real = hiera_hash('kmodwrapper::loads')
      } else {
        $loads_real = $loads
      }
      validate_hash($loads_real)
      create_resources('kmod::load',$loads_real)
    }

    if $options != undef {
      if $options_hiera_merge_real == true {
        $options_real = hiera_hash('kmodwrapper::options')
      } else {
        $options_real = $options
      }
      validate_hash($options_real)
      create_resources('kmod::option',$options_real)
    }

    if $settings != undef {
      if $settings_hiera_merge_real == true {
        $settings_real = hiera_hash('kmodwrapper::settings')
      } else {
        $settings_real = $settings
      }
      validate_hash($settings_real)
      create_resources('kmod::setting',$settings_real)
    }

}
