Bartek
======

Lounge toying. Get started **lightning fast**:


Build requirements
===================

Possibly slightly redundant, and slightly incomplete of non-bleedingly-obvious dependencies:

   apt-get install glew-utils lib3ds-1-3 lib3ds-dev libfreeimage3 libfreeimage-dev libglew-dev libglm-dev

Repo structure
==============

To make following upstream slightly less painful, I decided to use submodules:

     Bartek/
        shared.mak  -- general variables/rules
        fbxsdk/     -- external SDK from Autodesk
        Makefile    -- toplevel make file

        Engine/     -- submodule
        Minicraft/  -- submodule

So, to get it all _at once_:

    git clone --recurse https://github.com/sehe/Bartek.git
    cd Bartek
    make
    cd MiniCraft/Data
    LD_LIBRARY_PATH=../../Engine/Engine:~/custom/boost/stage/lib/ ../minicraft.exe

(change boost library dir according to your system)
