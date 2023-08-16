# -*- coding: utf-8 -*-

import os
import time
import build
import sys


sys.path.append(sys.path[0] + "/../")
import utils


build.build(build.build_list)
os.chdir(sys.path[0])

windeployqt = r"C:\Qt\6.5.2\msvc2019_64\bin\windeployqt.exe"
build.execute('xcopy /s /y ".\\..\\..\\src\\bin-32\\release\\" ".\\..\\packet\\"')
build.execute(
    "{0} --force --no-translations --compiler-runtime .\\..\\packet\\MyApp.exe".format(
        windeployqt
    )
)

miniVersion = "0.0.1"
current_time = time.strftime("%Y%m%d", time.localtime())
exe_name = "MyApp_V{0}_{1}.exe".format(miniVersion, current_time)
out_exe_path = ".\\..\\releases\\{0}".format(exe_name)
build.execute("del /q {0}".format(out_exe_path))
build.execute("del /q .\\..\\releases\\MyApp_Installation_Package.exe")

build.execute(
    "{0} package.iss".format(r'C:\"Program Files (x86)"\"Inno Setup 6"\ISCC.exe')
)
os.rename(".\\..\\releases\\MyApp_Installation_Package.exe", out_exe_path)

# generate update.json
json_path = ".\\..\\releases\\update.json"
utils.generate_json(miniVersion, out_exe_path, exe_name, json_path)

# upload file
utils.upload_file(
    "http://192.168.50.87:80/webdav/admin/Packages/MyApp/Windows/{0}".format(exe_name),
    "admin",
    "password",
    out_exe_path,
)
utils.upload_file(
    "http://192.168.50.87:80/webdav/admin/Packages/MyApp/Windows/update.json",
    "admin",
    "password",
    json_path,
)
