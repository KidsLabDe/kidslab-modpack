#!/bin/bash
git submodule update
cd MinecraftWorld-TurtleWorkshop/
sh prepare.sh
cd ..

echo "generating modpack zip"
rm modpack_1.8.9.zip
rm modpack_shader_1.8.9.zip

rm -r atlauncher-1.8.9/overrides/saves/TurtleWorkshop
mkdir atlauncher-1.8.9/overrides/saves/TurtleWorkshop
cp -r MinecraftWorld-TurtleWorkshop/* atlauncher-1.8.9/overrides/saves/TurtleWorkshop/
cd atlauncher-1.8.9/overrides/saves/
rm TurtleWorkshop_original.zip
zip -q -r TurtleWorkshop_original.zip TurtleWorkshop/*
cd ../../..
cd atlauncher-1.8.9
zip -q -r ../modpack_1.8.9.zip *    

cd ..
rm -r atlauncher-shader-1.8.9/overrides/saves/TurtleWorkshop
mkdir atlauncher-shader-1.8.9/overrides/saves/TurtleWorkshop

cp -r MinecraftWorld-TurtleWorkshop/* atlauncher-shader-1.8.9/overrides/saves/TurtleWorkshop/
cd atlauncher-shader-1.8.9/overrides/saves
rm TurtleWorkshop_original.zip
zip -q -r TurtleWorkshop_original.zip TurtleWorkshop
cd ../../..
cd atlauncher-shader-1.8.9
zip -q -r ../modpack_shader_1.8.9.zip *

