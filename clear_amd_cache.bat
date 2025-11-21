@echo off
:: Title: AMD Shader Cache Cleaner
:: Description: Deletes AMD DirectX and OpenGL shader caches to fix stuttering or corruption.

echo --------------------------------------------
echo      Cleaning AMD Shader Cache...
echo --------------------------------------------

:: 1. Clear DirectX Cache (DxCache)
if exist "%LOCALAPPDATA%\AMD\DxCache" (
    echo Found DxCache. Removing...
    rmdir /s /q "%LOCALAPPDATA%\AMD\DxCache"
    :: Recreate the empty folder to prevent errors
    mkdir "%LOCALAPPDATA%\AMD\DxCache"
) else (
    echo DxCache not found or already empty.
)

:: 2. Clear DirectX 12 Cache (DxcCache)
if exist "%LOCALAPPDATA%\AMD\DxcCache" (
    echo Found DxcCache. Removing...
    rmdir /s /q "%LOCALAPPDATA%\AMD\DxcCache"
    mkdir "%LOCALAPPDATA%\AMD\DxcCache"
) else (
    echo DxcCache not found or already empty.
)

:: 3. Clear OpenGL Cache (GLCache)
if exist "%LOCALAPPDATA%\AMD\GLCache" (
    echo Found GLCache. Removing...
    rmdir /s /q "%LOCALAPPDATA%\AMD\GLCache"
    mkdir "%LOCALAPPDATA%\AMD\GLCache"
) else (
    echo GLCache not found or already empty.
)

echo --------------------------------------------
echo      Cleanup Complete.
echo --------------------------------------------

:: Optional: Uncomment the line below if you want to see the result before the window closes
:: timeout /t 3