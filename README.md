## Scripts

  - ``send_files_adb.bat``  
    - Run in powershell:
  ```sh
  .\send_files_adb.bat test2.txt
  ```  
  Command above sends 'test2.txt file to running android emulators /sdcard-dir  
  
## Create .bat file with params ([Source](https://stackoverflow.com/questions/26551/how-can-i-pass-arguments-to-a-batch-file)):

Another useful tip is to use %* to mean "all". For example:

 ```sh
echo off
set arg1=%1
set arg2=%2
shift
shift
fake-command /u %arg1% /p %arg2% %*
  ```  
When you run:

test-command admin password foo bar
the above batch file will run:

fake-command /u admin /p password admin password foo bar
I may have the syntax slightly wrong, but this is the general idea.