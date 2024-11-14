{ pkgs ? import <nixpkgs> { } }:

(pkgs.buildFHSEnv {
  name = "rpi-wifi";

  # buildtime deps
  # like nativeBuildInputs
  targetPkgs = pkgs: (with pkgs; [
    ccache
    which
    gnumake
    gnused
    binutils
    diffutils
    gcc
    bash
    patch
    gzip
    bzip2
    file
    perl
    gnutar
    cpio
    unzip
    rsync
    file
    bc
    findutils
    ncurses.dev
    pkgsCross.aarch64-multiplatform.gccStdenv.cc
    # openssl
    # pkg-config
    glibc
  ] ++ pkgs.linux.nativeBuildInputs);

  # like shelHook
#  runScript = pkgs.writeScript "init.sh" ''
#    cat <<EOF
#    Useful commands:
#    make list-defconfigs
#    make <some_defconfig>
#    EOF
#
#    exec $SHELL
#  '';
}).env
