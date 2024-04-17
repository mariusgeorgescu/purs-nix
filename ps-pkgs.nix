l: self:
with builtins;
with self; {
  event =
    let info = hyrule.purs-nix-info; in {
      src.git = { inherit (info) repo rev; };
      info = { inherit (info) version dependencies; };
    };

  html-parser-halogen = {
    info.dependencies = [
      "arrays"
      "control"
      "dom-indexed"
      "foldable-traversable"
      "effect"
      "halogen"
      "maybe"
      "prelude"
    ];

    src.git = {
      repo = "https://github.com/rnons/purescript-html-parser-halogen.git";
      rev = "035a51d02ba9f8b70c3ffd9fe31a3f5bed19941c";
    };
  };

  markdown-it.src.flake.url = "github:purs-nix/purescript-markdown-it/4b90edc070c9ede0ee045224e0c64f9c502c3bf7";

  node-glob-basic = {
    src.git = {
      repo = "https://github.com/natefaubion/purescript-node-glob-basic.git";
      rev = "22b374b30537a945310fb8049f5bce1b51a7a669";
    };

    info = {
      version = "1.2.0";

      dependencies = [
        "aff"
        "console"
        "effect"
        "lists"
        "maybe"
        "node-fs-aff"
        "node-path"
        "node-process"
        "ordered-collections"
        "strings"
      ];
    };
  };

  task = {
    src.git = {
      repo = "https://github.com/ursi/purescript-task.git";
      rev = "7925eda037cac528976d435db7e1a5c8db2a03b8";
    };

    info = /package.nix;
  };

  cip30 = {
    src.git = {
      repo = "https://github.com/mlabs-haskell/purescript-cip30";
      rev = "8f1b34b48825fcec5e9c67f33e255770b1e0bc45";
    };
    info = {
      version = "1.0.0";
    };
  };

  cip30-typesafe = {
    src.git = {
      repo = "https://github.com/mlabs-haskell/purescript-cip30-typesafe";
      rev = "d72e51fbc0255eb3246c9132d295de7f65e16a99";
    };
    info = {
      version = "1.0.0";
    };
  };

  cardano-serialization-lib = {
    src.git = {
      repo = "https://github.com/mlabs-haskell/purescript-cardano-serialization-lib/";
      rev = "da2195fecac5442851dbc3ac3b6e1d805ced6c05";
    };
    info = {
      version = "1.0.0";
    };
  };
  
  cardano-transaction-lib = {
    src.git = {
      repo = "https://github.com/Plutonomicon/cardano-transaction-lib";
      rev = "9918ad51d6a7c9c2a4d4b59065d7e0d6fb0b0625";
    };
    info = {
      version = "7.0.0";
    };
  };
}
// import ./official-package-set self
  // import ./ps-pkgs-ns.nix { inherit l; ps-pkgs = self; }
