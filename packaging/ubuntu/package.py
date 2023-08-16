# -*- coding: utf-8 -*-

import os
import time
import build
import sys


sys.path.append(sys.path[0] + "/../")
import utils


build.build(build.build_list)
os.chdir(sys.path[0])

build.execute("cp -rf ./../../src/bin-64/release/. ./../packet/opt/MyApp/")
build.execute("cp -rf ./DEBIAN ./../packet")
build.execute("cp -f MyApp.desktop ./../packet/opt/MyApp/")
build.execute("cp -f logo.png ./../packet/opt/MyApp/")

build.execute(
    "cd ./../packet/opt/MyApp/ \n"
    "export LD_LIBRARY_PATH=/home/fxy/myapp/bin-64/release/. \n"
    "'/home/fxy/下载/linuxdeployqt-continuous-x86_64.AppImage' MyApp -always-overwrite -no-translations -qmake=/opt/Qt/6.5.2/gcc_64/bin/qmake -unsupported-allow-new-glibc -appimage \n"
)

miniversion = "0.0.1"
current_time = time.strftime("%Y%m%d", time.localtime())
deb_name = "MyApp{0}_{1}.deb".format(miniversion, current_time)
out_deb_path = "./../releases/{0}".format(deb_name)

build.execute("sed -i '/X-AppImage-Version/d' ./../packet/opt/MyApp/MyApp.desktop")
build.execute("rm -f {0}".format(out_deb_path))
build.execute("echo 123456 | sudo -S dpkg -b ./../packet/. {0}".format(out_deb_path))
build.execute("sudo chmod -R 777 ./../releases/")

# update.json uploadfile
json_path = "./../releases/update.json"
utils.generate_json(
    miniversion,
    out_deb_path,
    deb_name,
    json_path,
)

# dpkg -r MyApp
# dpkg -i MyApp_0.0.1_20230810.deb
# dpkg -i --force-overwrite MyApp_0.0.1_20230810.deb
