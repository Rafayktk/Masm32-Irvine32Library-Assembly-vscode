# Setting-up-vscode-for-assembly
This is a guide for how you can use assembly with Irvine library in vscode.

# Step 1: 
Download masm32 from there official website and place it in C drive directly.
https://www.masm32.com/download.htm 
click US site 1.
Install masm32.
Download Irvine library from GitHub.
https://github.com/meixinchoy/Irvine-library.git
download it somewhere you remember and can access it easily.

# Step 2:
Go to Irvine folder and Copy: Irvine32.inc, SmallWin.inc and VirtualKeys.inc.
Go to masm32 -> include -> and paste the above three files.
Go back to Irvine folder and Copy: Irvine32.lib
Go to masm32 -> lib -> and paste it here.

# Step 3:
Create a folder where you are going to code your assembly files.
download the Runner.bat file from this repo and place it in your folder.

# Step 4: 
Open the folder in vscode.
open the Runner.bat file in a tab and always keep it open for ez access as you will have to change the project name everytime you want to run a different program or a new one.
Create your .asm file.
Change the projectname in Runner.bat from "first" to whatever you have named your asm file(without the .asm).

# Step 5:
For importing the Irvine32 library in your assembly file.
Write: include C:\masm32\include\Irvine32.inc. Or if you haven't saved your masm32 in C, just include the correct path. 
And you are good to code.

# Step 6: 
To run your code
Open CMD(recommended) or PowerShell..
Note: For cmd you can just type Runner.bat to run the program, but for PowerShell you have to add .\ before the Runner.bat e.g .\Runner.bat
Now run the Runner.bat.
If your code doesn't have any errors, the program should execute.

# Step 7: Windows Defender stops the execution. 
Optional, as some devices don't need this I think.
Sometimes the windows defender deletes the exe file as soon as it gets created, treating it like a virus or something. hence stopping the execution of the program. 
You can try using another anti virus, but a more simple way is to exclude the folder from the anti virus settings.
Go to start -> search -> virus and threat protection -> Manage Settings -> Scroll down to exclusions -> add or remove exclusions -> click add an exclusion -> folder and select the folder where you are code is saved.

# Debugging:
If your code has errors, running the bat file will result in executing a previous version of the program or not running at all, saying something like there is no such file as file.exe etc.
To find out where the errors are: copy the second line from the .bat file
\masm32\bin\ml /c /Zd /coff %projectName%.asm
and paste it in the cmd and run. 
The type of errors and on which line they are should appear.
Try getting rid of the errors and keep checking by running the above line, for any remaining errors.
When the file.asm is successfully assembled.
Run the .bat file again. And you done.
