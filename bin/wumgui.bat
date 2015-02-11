@ECHO OFF

REM WUM Workbench 1.0 (http://www.hypknowsys.org/wum)
REM
REM After setting the following two environment variables, WUMgui -- the
REM interactive graphic user interface of the WUM Workbench -- can be
REM launched using this shell script. Make %WUM_HOME%\bin your current
REM working directory and submit the following command at the system prompt:
REM
REM prompt% wumgui.bat
REM
REM The first environment variable JAVA_HOME contains the absolute path to
REM the Java directory. It must be adjusted according to your system.
REM Example: SET JAVA_HOME=C:\Programs\Java\j2re1.4.0_01
REM
REM The second environment variable WUM_HOME contains the path of the
REM WUM installation. This directory contains the sub-directories \bin,
REM \data, \doc and \lib. After starting the tool for the first time, this
REM directory will also contain the file WUM.config as well. This
REM environment variable must be adjusted according to the installation of
REM the WUM Workbench. Example: SET WUM_HOME=C:\WUM.workbench10
REM
REM Note: You may have to adjust the size of memory allocated to the Java
REM Virtual Machine in the environment variable WUM_JAVA_OPTIONS (-ms:
REM size at start of JVM resp. -mx: maximum size). The size of two stacks
REM used by the JVM (-ss resp. -oss) can be changed as well. See the Java
REM tools documentation for details.
REM
REM If you are using Windows 95 or Windows 98, you might have to create a
REM pif-file to start the DIAsDEM Workbench by double-clicking on its icon.
REM Within the corresponding pif-file, manually increase the environment
REM memory that Windows allocates to the batch file (2048 kByte).


SET WUM_HOME=C:\Users\YourName\WUM.workbench10
SET JAVA_HOME=C:\Programs\YourJavaPath


REM Please do not modify the following lines without appropriate knowledge.
REM Note that the memory allocated to the Java virtual machine corresponds
REM is appropriate for a computer with 256 MB RAM.

SET WUM_JAVA_OPTIONS=-ms32m -mx200m -ss4m -oss4m -Dfile.encoding=ISO-8859-1

ECHO ON
"%JAVA_HOME%\bin\java" %WUM_JAVA_OPTIONS% -classpath "%WUM_HOME%\lib\wum-workbench-10.jar";"%WUM_HOME%\lib\weka.jar";"%WUM_HOME%\lib\jdom.jar";"%WUM_HOME%\lib\looks-1.1.2.jar";"%WUM_HOME%\lib\forms-1.0.2.jar" org.hypknowsys.wum.client.gui.WUMgui "%WUM_HOME%"
