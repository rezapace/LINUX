# Download wsl_update_x64.msi from GitHub
Invoke-WebRequest -Uri "https://github.com/rezapace/LINUX/releases/download/wsl/wsl_update_x64.msi" -OutFile "$HOME\Documents\Github\wsl_update_x64.msi"

# Install Windows Subsystem for Linux (WSL)
wsl.exe --install

# Enable Windows Subsystem for Linux feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Virtual Machine Platform feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Enable Virtual Machine Platform feature using PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

# Set default WSL version to 2
wsl --set-default-version 2

# Install Ubuntu 22.04 from the Windows Package Manager (winget)
winget install Canonical.Ubuntu.2204

# Set WSL version for the Ubuntu 22.04 instance to 2
wsl.exe --set-version Canonical.Ubuntu.2204 2

# List installed WSL distributions
wsl --list -v

