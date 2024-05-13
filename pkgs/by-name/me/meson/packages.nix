{ ... }:
res: pkgs: super:

with pkgs;
{
  meson = callPackage ./. { };

  # while building documentation meson may want to run binaries for host
  # which needs an emulator
  # example of an error which this fixes
  # [Errno 8] Exec format error: './gdk3-scan'
  mesonEmulatorHook =
    makeSetupHook
      {
        name = "mesonEmulatorHook";
        substitutions = {
          crossFile = writeText "cross-file.conf" ''
            [binaries]
            exe_wrapper = ${lib.escapeShellArg (stdenv.targetPlatform.emulator pkgs)}
          '';
        };
      }
      # The throw is moved into the `makeSetupHook` derivation, so that its
      # outer level, but not its outPath can still be evaluated if the condition
      # doesn't hold. This ensures that splicing still can work correctly.
      (if (!stdenv.hostPlatform.canExecute stdenv.targetPlatform) then
        ../by-name/me/meson/emulator-hook.sh
      else
        throw "mesonEmulatorHook may only be added to nativeBuildInputs when the target binaries can't be executed; however you are attempting to use it in a situation where ${stdenv.hostPlatform.config} can execute ${stdenv.targetPlatform.config}. Consider only adding mesonEmulatorHook according to a conditional based canExecute in your package expression.");
}

