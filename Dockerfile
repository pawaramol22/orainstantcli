FROM microsoft/windowsservercore

COPY instantclient_12_2 c:/oracle_odbc

RUN setx /m TNS_ADMIN "c:\oracle_odbc"
WORKDIR c:/oracle_odbc
RUN powershell -NoProfile -ExecutionPolicy bypass -Command ".\odbc_install.exe -silent -nowelcome -debug -force" 
RUN setx /m PATH "C:\oracle_odbc;%PATH%;"

CMD [ "ping", "localhost", "-t" ]

