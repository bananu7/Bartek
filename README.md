
Bartek
======

Lounge toying

Build requirements
===================

Possibly slightly redundant, and slightly incomplete of non-bleedingly-obvious dependencies:

   apt-get install freeglut3 freeglut3-dev glew-utils lib3ds-1-3 lib3ds-dev libfreeimage3 libfreeimage-dev libglew-dev libglm-dev libsoil1 libsoil-dev luakit

Repo structure
==============

To make following upstream slightly less painful, I decided to use submodules:


     Bartek/

        Engine/    -- submodule1
        Minicraft/  -- submodule2


