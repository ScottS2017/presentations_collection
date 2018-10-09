Start by unzipping these files into your project ***directory***. 
If you put the zip in your project directory and extract it there, this will FAIL.
The run.bat file should show up right underneath of README.md in your files listing 
and the unzipped build directory should be a sibling of your lib, ios and android directories.

Get the right commit SHA hash code for your engine version from the Futter SDK: flutter\bin\internal\engine.version
Go download: 
https://storage.googleapis.com/flutter_infra/flutter/YOUR_COMMIT_SHA_HASH_CODE_HERE/windows-x64/windows-x64-embedder.zip

Now copy the following into the project's build folder:
The flutter_engine.dll from the windows embedder.zip we got above.
The icudtl.dat from the Futter SDK: flutter\bin\cache\artifacts\engine\windows-x64

Run the run.bat file from a terminal in the project level directory. 
- This will first run "flutter build bundle" which is a methoid of building the project that is different from the normal debug or release builds.
- It will then cd into the build directory and run FlutterDemoConsole.exe
- Lastly, it willcd you back to the project directory because we're all lazy and don't want to do it ourselves.

That's it!
Now go run Flutter on Windows and make your friends jealous!