AMD Shader Cache Cleaner

A lightweight Windows Batch script designed to automatically clear AMD DirectX and OpenGL shader cache files. This utility is useful for troubleshooting graphical glitches, stuttering issues caused by corrupt cache, or ensuring a clean slate after updating GPU drivers.

⚠️ Important Performance Warning

Do not run this script unnecessarily.

The shader cache exists to speed up your games. Deleting it forces your GPU to re-compile shaders the next time you launch a game.

Consequence: You may experience temporary stuttering, lag spikes, or longer load times in games immediately after running this script.

Best Practice: Use this tool only when troubleshooting specific issues or after a clean driver install.

Features

DirectX Cache: Clears %LOCALAPPDATA%\AMD\DxCache

DirectX 12 Cache: Clears %LOCALAPPDATA%\AMD\DxcCache

OpenGL Cache: Clears %LOCALAPPDATA%\AMD\GLCache

Safe Fail: Checks if directories exist before attempting deletion to avoid errors.

Usage

Option 1: Manual Run (Recommended)

Download clear_amd_cache.bat from this repository.

Right-click the file and select Run as Administrator (often required to delete system-locked files).

Wait for the process to complete.

Option 2: Run at Windows Startup

Note: This will cause daily shader compilation stutters in games.

Press Win + R, type shell:startup, and press Enter.

Copy clear_amd_cache.bat into this folder.

Troubleshooting

"Access Denied" or Files Not Deleted

If the script cannot delete certain files, it is usually because:

Files are in use: The AMD driver or a background game launcher (Steam, Epic) has locked the file.

Permissions: Try running the script as Administrator.
