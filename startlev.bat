title officerdownOS
if exist username.user goto proceed
if not exist username.user goto no

:proceed 
desktop.bat

:no
accset.bat