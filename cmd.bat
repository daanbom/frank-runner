:: This file is generated by build.xml
@echo off
setlocal enabledelayedexpansion
if not exist "%~dp0download\" (
	mkdir "%~dp0download"
)
if not exist "%~dp0build\tmp\build\" (
	mkdir "%~dp0build\tmp\build"
)
set DOWNLOAD_HELP=download https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip manually, move it to %~dp0download and restart this script
if not exist "%~dp0download\OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip" (
	echo In case of errors %DOWNLOAD_HELP%
	curl -f -o "%~dp0download\OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip.tmp" -L https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip
	if !errorlevel! neq 0 (
		echo Please %DOWNLOAD_HELP%
		goto error
	)
	move "%~dp0download\OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip.tmp" "%~dp0download\OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip"
)
if not exist "%~dp0build\jdk8u292-b10\" (
	tar --exclude=*/demo --exclude=*/sample --exclude=*/manual --exclude=*/src.zip -xvf "%~dp0download\OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.zip" -C "%~dp0build\tmp\build"
	if !errorlevel! neq 0 (
		echo Please %DOWNLOAD_HELP%
		goto error
	)
	move "%~dp0build\tmp\build\jdk8u292-b10" "%~dp0build\jdk8u292-b10"
	RUN_INSTALL="true"
)
set DOWNLOAD_HELP=download https://archive.apache.org/dist/ant/binaries/apache-ant-1.10.10-bin.zip manually, move it to %~dp0download and restart this script
if not exist "%~dp0download\apache-ant-1.10.10-bin.zip" (
	echo In case of errors %DOWNLOAD_HELP%
	curl -f -o "%~dp0download\apache-ant-1.10.10-bin.zip.tmp" -L https://archive.apache.org/dist/ant/binaries/apache-ant-1.10.10-bin.zip
	if !errorlevel! neq 0 (
		echo Please %DOWNLOAD_HELP%
		goto error
	)
	move "%~dp0download\apache-ant-1.10.10-bin.zip.tmp" "%~dp0download\apache-ant-1.10.10-bin.zip"
)
if not exist "%~dp0build\apache-ant-1.10.10\" (
	tar --exclude=*/demo --exclude=*/sample --exclude=*/manual --exclude=*/src.zip -xvf "%~dp0download\apache-ant-1.10.10-bin.zip" -C "%~dp0build\tmp\build"
	if !errorlevel! neq 0 (
		echo Please %DOWNLOAD_HELP%
		goto error
	)
	move "%~dp0build\tmp\build\apache-ant-1.10.10" "%~dp0build\apache-ant-1.10.10"
)
set JDK_8_DIR=%~dp0%build\jdk8u292-b10
set JDK_11_DIR=%~dp0%build\jdk-11.0.11+9
set JDK_17_DIR=%~dp0%build\jdk-17.0.5+8
if not exist "%JDK_11_DIR%" (
	set RUN_INSTALL=true
)
if not exist "%JDK_17_DIR%" (
	set RUN_INSTALL=true
)
if not exist "%~dp0build\apache-maven-3.8.4" (
	set RUN_INSTALL=true
)
set JAVA_HOME=%JDK_8_DIR%
set ANT_HOME=%~dp0build\apache-ant-1.10.10
if "%RUN_INSTALL%" == "true" (
	call "%~dp0build\apache-ant-1.10.10\bin\ant" -emacs -buildfile "%~dp0build.xml" install
)
set PATH=%JAVA_HOME%\bin;%ANT_HOME%\bin;%~dp0build\apache-maven-3.8.4\bin;%PATH%
C:\Windows\System32\cmd.exe /k "echo JAVA : %JAVA_HOME%& echo ANT  : %ANT_HOME%& echo MAVEN: %~dp0build\apache-maven-3.8.4"