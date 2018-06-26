
# https://cstan.io/?p=8946&lang=en
%if 0%{?rhel} == 7
%define dist .el7
%endif
Summary: fmw-12cR1
Name: fmw-12cR1
Version: 12.1.3.0.0
Release: 1%{?dist}
URL:     http://panerabread.com
License: GPL
BuildRoot: %{_tmppath}/%{name}-root
Source0: %{name}-%{version}.tgz
BuildArch: x86_64
AutoReqProv: no

%define debug_package %{nil}
%define __jar_repack %{nil}
%define _unpackaged_files_terminate_build 0

%description
An rpm created by Panera Bread

%prep

%setup

%build

%install
rm -rf %{buildroot}
mkdir -p %{buildroot}/opt/oracle/product
cp -R $RPM_BUILD_DIR/%{name}-%{version} %{buildroot}/opt/oracle/product

%post
ln -nsf /opt/oracle/product/%{name}-%{version} /opt/oracle/middleware

%clean

%files
%defattr(-,oracle,oinstall)
/opt/oracle/product

%changelog
* Fri Mar 23 2018 Koy Dooley <koy.dooley@panerabread.com>
- Initial