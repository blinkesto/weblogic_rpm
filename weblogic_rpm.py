#!/usr/bin/python
import argparse, sys, ConfigParser, socket, subprocess

os_list=['centos7', 'centos6']
wls_list=['12.1.3.0.0','12.2.1.2.0','12.2.1.3.0']
gradle_setup_list=[
    ':run:os:install',
    ':run:os:test:install',
    ':run:weblogic:install',
    ':run:weblogic:test:install',
    ':run:rpm:create',
    ':run:rpm:test:create',
    ':run:os:halt'
]

gradle_install_list=[
    ':run:rpm:install',
    ':run:rpm:test:install',
    ':run:rpm:halt'
]

Config = ConfigParser.ConfigParser()

def info(args):
    print("Usage:")
    print("./weblogic_rpm.py create  --os=%s --wls=%s" % (os_list, wls_list))


def run(args):
    create(args)
    install(args)

def create(args):
    cmd_list=[]

    for gradle_setup in gradle_setup_list:
        os_opt =  "-Pos=%s" % args.os
        wls_opt = "-Pwls=%s" % args.wls
        cmd_list.append('gradle')
        cmd_list.append('%s' % (gradle_setup))
        cmd_list.append('%s' % (os_opt))
        cmd_list.append('%s' % (wls_opt))
        process = subprocess.Popen(cmd_list)
        process.wait()
        cmd_list=[]

def install(args):
    cmd_list = []

    for gradle_install in gradle_install_list:
        os_opt =  "-Pos=%s" % args.os
        wls_opt = "-Pwls=%s" % args.wls
        cmd_list.append('gradle')
        cmd_list.append('%s' % (gradle_install))
        cmd_list.append('%s' % (os_opt))
        cmd_list.append('%s' % (wls_opt))
        process = subprocess.Popen(cmd_list)
        process.wait()
        cmd_list=[]


def ConfigSectionMap(section):
    dict1 = {}
    options = Config.options(section)
    for option in options:
        try:
            dict1[option] = Config.get(section, option)
            if dict1[option] == -1:
                DebugPrint("skip: %s" % option)
        except:
            print("exception on %s!" % option)
            dict1[option] = None
    return dict1

def _get_parser():
    main_parser = argparse.ArgumentParser()
    subparsers = main_parser.add_subparsers(help='sub-command help')

    parser_create = subparsers.add_parser('create', help='Creates a RPM')
    parser_create.set_defaults(func=create)
    parser_create.add_argument("--os", help="centos6, centos7")
    parser_create.add_argument("--wls", help="12")

    parser_install = subparsers.add_parser('install', help='Installs the generated RPM')
    parser_install.set_defaults(func=install)
    parser_install.add_argument("--os", help="%s" % os_list)
    parser_install.add_argument("--wls", help="%s" % wls_list)

    parser_install = subparsers.add_parser('info', help='Shows usage info')
    parser_install.set_defaults(func=info)


    return main_parser

def command_line_runner():
    parser = _get_parser()
    args = parser.parse_args()

    # parse the args and call whatever function was selected
    args.func(args)

if __name__ == "__main__":
    command_line_runner()

