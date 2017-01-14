Chisel3 DSP Dependencies
===================

This repo is used to track Chisel3 DSP-specific dependencies, as they get updated. 

> Note that using this repo requires you to have Verilator ([Install instructions](https://www.veripool.org/projects/verilator/wiki/Installing)) & SBT [and Git]. Even though the submodule is included, you should ideally not use FIRRTL interpreter for tests, due to the fact that designs typically use multiple clocks. 

##Use

Whenever you are updating to the latest set of dependencies,  `source update.bash` in the **Chisel3DSPDependencies** directory. This will perform a submodule update, publish the updates locally, and setup your development environment.

When you just want to re-publish fresh copies of current dependencies and setup your environment, `source publish.bash` in the **Chisel3DSPDependencies** directory.

When you're starting a new session, if you haven't done either of the above, `source setenv.bash`.  

If updating makes things appear wonky, it's also recommended that you try `sbt clean` and removing files in your *~/.ivy2/local* directory.

> Note that `sbt publish-local` will fail on **dsptools**, because there's currently a silly requirement that DSP stuff be dependent on rocket-chip (*testchipip and rocketchip*). However, everything that you need for creating DSP blocks should be published properly. 

By publishing local, you can include any of these submodules as dependencies for your DSP designs. See [ucb-art/Chisel3DSPExample](https://github.com/ucb-art/Chisel3DSPExample). 

> Also, when you run any of the above bash scripts, the git commit # will be saved to a bash variable (**Chisel3DSPDependenciesCommit**), that will be printed to a file each time you run sbt in a project that uses the **build.sbt** file in [ucb-art/Chisel3DSPExample](https://github.com/ucb-art/Chisel3DSPExample). That way, you don't have to submodule this repo in every DSP project and can still track which versions of things were used. 

##Submodules

* **ucb-bar/dsptools**
DSP Features (Fixed-point, etc. + custom DSP testers) on top of Chisel/Chisel Testers. 

* **ucb-bar/chisel-testers**
Testing infrastructure for Chisel.

* **ucb-bar/firrtl-interpreter**

* **ucb-bar/chisel3**
Chisel, which compiles to Verilog via FIRRTL.

* **ucb-bar/firrtl**
FIRRTL backend.