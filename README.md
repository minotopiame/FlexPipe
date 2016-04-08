# FlexPipe [![Build Status](https://ci.janmm14.de/buildStatus/icon?job=public~server~FlexPipe)](https://ci.janmm14.de/job/public~server~FlexPipe)
**The flexible pipe to coordinate masses of players to the right spigot.**

Build upon [BungeeCord](https://github.com/SpigotMC/BungeeCord), FlexPipe is created to provide optimizations, more
stability and security. Originally built for [minotopia.me](https://www.minotopia.me), FlexPipe's changes to BungeeCord
are well tested and properly documented. Due to the patch system, updates of BungeeCord are automatically reflected in
the newest builds.

## What is it?
BungeeCord and therefore FlexPipe is a server portal system that can be used to let players teleport
between multiple minecraft servers, preferably spigot servers (and derivates). It does so by letting the client think
its a world change while the system disconnects from the previous minecraft server and connects to the target minecraft
server.

## Download
You can download the newest builds from my [Jenkins](https://ci.janmm14.de/job/public~server~FlexPipe). The latest build
is always the recommended build, except otherwise stated.

## Usage
Simply download your FlexPipe.jar and start it with java once. Then you can find additional configuration options in
your config.yml file. I suggest to turn on automatic module updates to recieve module updates automatically after
downloading a new FlexPipe.jar

## Compilation
This project uses maven to handle its dependencies.

The compilation of FlexPipe is fairly easy. At first you need to clone this repository with git. Then you need to
execute ```./reset-apply-build.sh``` in a bash environment. You can get it on windows mostly by right-clicking in the
file explorer and selecting "Git Bash". The final files are copied into the ```target``` folder.

**Be careful** if you have done changes in the BungeeCord folder which are not saved as a patch yet. In that case, **never** run ```./reset-apply-build.sh``` or ```./reset.sh```, these will **reset** your changes to BungeeCord. You should then only run ```./build.sh``` instead to compile flexpipe.

## Contribution
We would really appreciate it if you take part in developing FlexPipe. Here is how to do it:

1. Fork FlexPipe.
2. Compile the project once (see above).
3. Go into the bungeecord folder.
4. Edit what you want, but
   - before you edit, start an interactive rebase on ```origin/master``` to edit the commit/patch you want to edit, *or*
   - change anything that's not related directly to a previous commit and commit your changes.
5. Run ```./format-patches.sh```
6. Commit the changes of the patch files to your FlexPipe fork and create a pull request to FlexPipe. Optionally you can exclude any patch file where only line numbers and git hashes changed.
7. Thanks!
