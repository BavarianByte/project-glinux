This is the repository that houses all necessary scripts to install and set up the Linux distribution "GLinux" - a Gaming-focused Linux distribution based on Ubuntu.

Only use this collection of scripts with **Ubuntu Server 20**, because the scripts use snapd & apt-get (snapd will be installed in programs.sh)

## Git-clone this project, and run the following files in terminal (e.g.: ./init-cleanup.sh) and in the correct order & don't forget to make the scripts executable with "chmod -x":

1. /setup/update.sh
2. /install/programs.sh
3. /install/install-desktop.sh

After rebooting, you should see the normal Ubuntu Desktop. Continue with executing the remaining scripts with Nautilus/CLI:

4. /install/drivers.sh
5. /install/custom-kernel.sh

**Disclaimer: Execute the right scripts for the right edition. If you start a script, that is meant for "Broadcaster", you will install "unnecessary" programs, which adds to the finished ISO-file size**

## Versioning declaration & Usage:

The versioning of this repo ties directly into the version number of the Linux Distro. So, for example: Scripts (v. 0.21.5) are installed & executed on OS (v. 0.21.5)

Versioning Scheme:                                     x.xx.xx

                                            Main Version.Year.Small Update

- Main Version: Once this is out of heavy development and stable, this number will once reach 1.
- Year: The last two digits of the current year.
- Small update: (Could) go up infinite, and marks smaller, but significant changes.