# SetArchPrefForURL
A CLI utility to "check" or "uncheck" "Open Using Rosetta" preference for Apple Silicon macs. 

![Open Using Rosetta screenshot](./images/simulator_info.png?raw=true)


## Usage:

```
SetArchPrefForURL <path-to-the-app> <x86_64|arm64>
```


## How does this work ?

The CLI tool calls a private function `_LSSetArchitecturePreferenceForApplicationURL` defined in `CoreServices.framework`. This is same way that `Finder.app` updates the preference.

![Finder.app Smaple](./images/finder_sample.png?raw=true)
