import os
import datetime
import subprocess
import sys

build_list = [
    {
        "qmake": r"/Users/fxy/Qt/6.5.2/macos/bin/qmake",
        "qmake_params": r'"CONFIG+=qml_debug"',
        "make": r"make",
        "project": r"/Users/fxy/myapp/MyApp.pro",
        "build_directory": r"/Users/fxy/myapp/build-MyApp-Desktop_Qt_6_5_2_macos_64bit-Release",
    }
]


class Builder:
    def __init__(self, project, qmake, qmake_params, make, build_directory):
        self.project = project
        self.qmake = qmake
        self.qmake_params = qmake_params
        self.make = make
        self.build_directory = build_directory

        (self.qmake_path, self.qmake_name) = os.path.split(qmake)
        (self.jom_path, self.jom_name) = os.path.split(make)
        (self.project_path, self.project_name) = os.path.split(project)

        self.qt_version = self.qmake_path.split("/")[-3]
        self.compiler_version = self.qmake_path.split("/")[-2]

    def execute_qmake_cmd_line(self):
        create_qmake_cmd_line = (
            self.qmake + " " + self.project + " -spec macx-clang " + self.qmake_params
        )
        return True if execute(create_qmake_cmd_line) else False

    def execute_make_cmd_line(self):
        cmd_line = "{0} -j4".format(self.make)
        return True if execute(cmd_line) else False

    def execute_make_clean_cmd_line(self):
        if os.path.exists("Makefile") | os.path.exists("makefile"):
            return True if execute("{0} clean".format(self.make)) else False
        return True

    def build(self):
        os.chdir(self.build_directory)
        print("Starting build [{0}]".format(os.path.splitext(self.project_name)[0]))

        isOk = True
        status = self.execute_make_clean_cmd_line()
        isOk = isOk and status
        print("Make clean: ", "Success" if status else "Failed")

        status = self.execute_qmake_cmd_line()
        isOk = isOk and status
        print("QMake:      ", "Success" if status else "Failed")

        status = self.execute_make_cmd_line()
        isOk = isOk and status
        print("Make:       ", "Success" if status else "Failed")

        print("End build   ", "Success" if isOk else "Failed")
        return isOk


def execute(cmd):
    print(cmd)
    result = subprocess.run(cmd, stdout=sys.stdout, stderr=sys.stderr, shell=True)
    if result.returncode != 0:
        print(result.stderr)

    return True if result.returncode == 0 else False


def build(build_list):
    for each in build_list:
        qmake = each.get("qmake")
        qmake_params = (
            "" if each.get("qmake_params") == None else each.get("qmake_params")
        )
        make = each.get("make")
        project = each.get("project")
        build_directory = each.get("build_directory")

        builder = Builder(project, qmake, qmake_params, make, build_directory)
        if builder.build() == False:
            print("[{0}] Deploy failed!!!".format(datetime.datetime.now()))
            exit(-1)


if __name__ == "__main__":
    print("[{0}] Start deploy...".format(datetime.datetime.now()))
    build(build_list)
    print("[{0}] Deploy success!!!".format(datetime.datetime.now()))
