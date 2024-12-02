# Download the installer script:

Invoke-WebRequest -outfile "install-opentofu.ps1" -uri "https://get.opentofu.org/install-opentofu.ps1"

# execution policy issues when running this script

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# install open tufu with skipping verification

.\install-opentofu.ps1 -installMethod standalone -skipVerify

# OpenTufu Installed Sucessfully

# IF UNABLE TO RUN TOFU COMMAND IN GIT BASH

vi ~/.bashrc

# REPLACE PATH WITH TOFU PATH AND ADD THIS LINE IN ABOVE FILE

export PATH=$PATH:PASTE-PATH-HERE
