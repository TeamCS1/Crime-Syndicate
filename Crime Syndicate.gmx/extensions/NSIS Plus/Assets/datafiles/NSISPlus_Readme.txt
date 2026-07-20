This is a replacement NSIS script for your game project. Simply replace the RunnerInstaller.nsi script in your project, copy the MSVC++ installer .exe in the GMS /makensis/ folder and you're good to go

* For GameMaker Studio 1.x projects

1. Download the MSVC++ 2008 Runtime (x86) executable from http://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe
2. Copy the MSVC++ Runtime executables to "C:\Users\<USERNAME>\AppData\Roaming\GameMaker-Studio\makensis\", where <USERNAME> is your user's name
3. Copy and replace RunnerInstaller.nsi in your Project's Windows Config folder
4. Adjust RunnerInstaller.nsi as you wish

* For Game Maker Studio 2.x projects

1. Download the MSVC++ 2015 Runtime (x86) executable from https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x86.exe
2. Copy the MSVC++ Runtime executables to "C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-<VERSION>\windows\", where <VERSION> is your GMS runtime's version
3. Copy and replace RunnerInstaller.nsi in your Project's Windows Config folder
4. Open RunnerInstaller.nsi, remove the line that says "!define USING_MSVC2008 1" and uncomment the line that says ";!define USING_MSVC2015 1"
5. Adjust RunnerInstaller.nsi as you wish

