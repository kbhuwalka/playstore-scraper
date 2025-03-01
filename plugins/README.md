# Plugins

_**ALL PLUGINS SHOULD BE PLACED IN ONE OF THESE DIRECTORIES**_

Plugins are files/modules that provide additional functionality that are not 
common enough to be implemented under one of the core modules.

# Directory Structure
## core
The sub-directories here corresponds to each of the core modules, hence the name 
core. Any `.py` files directly in these sub-directories will be dynamically 
picked up by `full_pipeline()` in `core/pipelines.py` and run. Any directory in
these sub-directories will be treated as a module and loaded as such.

Each plugin should have _**1**_ `run()` function, which will be called on load. 
Plugins not in this directory can use any function to be called on load, this is
for convenience with dynamic loading. 

Example: <br/>
If the analyzer directory had these contents
```
analyzer/
    a.py
    b/
        c.py
        d.py
```
the plugins picked up would be `a` and `b`.

### `analyzer` directory
Because of the expensive nature of the analysis done for each APK, plugins in 
the `analyzer` directory can also export another function 
`analyze(apk_entry, a, d_s, dx, db_helper)`, which takes an app entry, an 
Androguard `APK` instance, a list of Androguard `DalivkVMFormat` instances, an 
Androguard `Analysis` instance, and a `DbHelper` instance

## development
Any plugin that is under development and not ready to be picked up dynamically
should be placed here

## apk_experiments
Plugins meant to be used for the `apk_analysis_experiment` pipeline for quick
testing and experiments.

# Testing
TODO
