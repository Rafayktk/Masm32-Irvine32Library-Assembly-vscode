# Setting-up-vscode-for-assembly
This is a guide for those who want to use assembly in vscode.
# Step 1: 
Download masm32 from there official website and place it in C drive directly.
https://www.masm32.com/download.htm 
click US site 1.
Install masm32.
Download Irvine library from GitHub.
https://github.com/meixinchoy/Irvine-library.git
-> Click on code -> Click on Download zip

# Step 2:
Go to Irvine folder and Copy: Irvine32.inc, SmallWin.inc and VirtualKeys.inc.
Go to masm32 -> include -> and paste the above three files.
Go back to Irvine folder and Copy: Irvine32.lib
Go to masm32 -> lib -> and paste it here.

# Step 3:
Create a folder where you are going to code your assembly files.
Create a file inside it with the .bat(windows Batch file) extension and open it with notepad.
Copy paste the text below in it and save it.

# Step 4: 
Open the folder in VSCode.
open the .bat file and always keep it open for ez access.
Create your .asm file.
Change the projectname in .bat from first to whatever you have named your asm file(without the .asm).

# Step 5:
For importing the Irvine32 library in your assembly file.
Write: include C:\masm32\include\Irvine32.inc. Or if you haven't saved your masm32 in C, just include the correct path. 
And you are good to go.

# Step 6: 
For running your code
Go to terminal in the top section of vscode and create a new terminal if there isn't one already open. 
Open CMD(recommended) or PowerShell(There is downwards arrow next to plus sign, click and open command prompt/powershell).
Note: For cmd you can just type file.bat to run the program, but for PowerShell you have to add .\ before the file.bat e.g .\file.bat
Now run the .bat file by typing in the cmd: nameOfTheBatchFile.bat
If your code doesn't have any errors, the code will run.

# Step 7: Optional, as some devices don't need this I think.
Sometimes the windows defender deletes the exe file, treating it like a virus or something. hence stopping the execution of the program. 
You can try using another anti virus, but a more simple way is to exclude the folder from the anti virus settings.
Go to start -> search -> virus and threat protection -> Manage Settings -> Scroll down to exclusions -> add or remove exclusions -> click add an exclusion -> folder and select the folder where you are code is saved.

# Bonus: Debugging:
If your code has errors, running the bat file will result in executing a previous version of the program or not running at all saying something like there is no such file as file.exe etc.
To find out where the errors are: copy the second line from the .bat file
\masm32\bin\ml /c /Zd /coff %projectName%.asm
and paste it in the cmd and run. 
The type of errors and on which line they are should appear.
Try getting rid of the errors and keep checking by running the above line, for any remaining errors.
When the file.asm is successfully assembled.
Run the .bat file again. And you done.
