This is the repository that houses all necessary scripts to install and set up the Linux distribution "GLinux" - a Gaming-focused Linux distribution based on Debian.

Only use this collection of scripts with **Debian Stable netinstall** (https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.7.0-amd64-netinst.iso), because the scripts use apt-get (snapd will be installed in programs.sh), and utilize Debian-specific commands only.

Make the scripts executable by "cd"-ing into the directory containing the scripts, make yourself root with "sudo sh". To make all scripts executable, type: "chmod 777 *.sh". And now, execute them by issuing "bash script-name.sh"

## Git-clone this project to /tmp, and run the following files in terminal (e.g.: ./init-cleanup.sh) and in the correct order & don't forget to make the scripts executable:

1. /setup/debian-init.sh
2. /setup/debian-stabletotesting-init.sh
3. /install/programs.sh
4. /install/install-desktop.sh

After rebooting, you should see the normal KDE Plasma Desktop. Continue with executing the remaining scripts with Dolphin/CLI:

5. /install/drivers.sh
6. /install/custom-kernel.sh

When finished, the last folder you may work with is 'post-install', which inhabits useful scripts for already existing installs.
**Warning: If you want to distribute a custom version of GLinux, do not use any scripts in this folder but 'update.sh'!**

**Disclaimer: Execute the right scripts for the right edition. If you start a script, that is meant for "Broadcaster", you will install "unnecessary" programs, which adds to the finished ISO-file size**

## Versioning declaration & Usage:

The versioning of this repo ties directly into the version number of the Linux Distro. So, for example: Scripts (v. 0.21.5) are installed & executed on OS (v. 0.21.5)

Versioning Scheme:                                x.xx.xx

                                        Main Version.Year.Small Update

- Main Version: Once this is out of heavy development and stable, this number will once reach 1.
- Year: The last two digits of the current year.
- Small update: (Could) go up infinite, and marks smaller, but significant changes.
