let # internal lib dependencies
  foundation = import ./1_foundation.nix;
in
  # e.g. the root of the node
  foundation.loadStatic ../../.
  # will end up being an object like this:
    # {
    #   setup = {
    #     release = "";
    #     sourceTypes = { ...};
    #     licenses = { ... };
    #     maintainers = [ ... ];
    #     teams = { ... };
    #   };
    #   meta = {
    #     minNixVersion = "2.3";
    #     generatedBy = "";
    #   };
    # }