#!/bin/bash
echo "generating modpack zip"
rm modpack_1.8.9.zip
cd atlauncher-1.8.9
zip -r ../modpack_1.8.9.zip *    

cd ..
rm modpack_shader_1.8.9.zip
cd atlauncher-shader-1.8.9
zip -r ../modpack_shader_1.8.9.zip *

