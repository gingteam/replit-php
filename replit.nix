{ pkgs }:
let 
  php = pkgs.php82.buildEnv {
    extensions = ({ enabled, all }: enabled ++ (with all; [
      swoole
    ]));
  };
in {
  deps = [
    php
    pkgs.phpactor
    pkgs.php82Packages.composer
  ];
}
