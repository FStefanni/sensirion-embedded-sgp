# SENSIRION EMBEDDED SPS

This library is a simple re-packaging of the
[Sensirion Embedded SPS library](https://github.com/Sensirion/embedded-sps)
to simplify its integration in Arduino.

The original code (which is distributed inder BSD license) is here slightly
changed, to add some useful features.

# Integration flow to update to latest sensirion version

1. Set Sensirion remote:
   ```
   git remote set sensirion https://github.com/Sensirion/embedded-sps
   ```
1. Switch to `merging` branch
    1. Merge new changes:
    ```
    git fetch sensirion master
    git merge allow-unrelated-histories sensirion/master
    git push
    ```
1. Switch to `cleaning` branch
    1. Rebase from `merging` and push (`--force-with-lease`)
    1. Possibly extend/update `export.sh` and then run it
    1. Push changes
1. Switch to `customizing` branch
    1. Rebase from `merging` and push (`--force-with-lease`)
1. Switch to `master` branch
    1. Merge `customizing` and push
