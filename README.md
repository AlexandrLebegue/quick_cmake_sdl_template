# SDL2 CMake Template with presets

Quick Template project to setup a CMake SDL2 Application. It provides an automatic installation script for SDL2 package (only for windows for now).

This template is based from [Mikea15 template](https://github.com/Mikea15/SDL-Cmake-template) 

## Setup

- Fork
- Install SDL2 : you can use the automatic installer for windows with `install_sdl.ps1` script.
- **If windows**: Edit `CMakePresets.json` and change `SDL2_PATH` on line 19, to the path where you have SDL2 libraries. ( WINDOWS )

## Use 

This template use preset, by default one preset has been created for Visual Studio 17 2022, you can modify it or create another one to custom your preset to your convenience. 

**Configure** 

`cmake --preset <msvc17 or your_custom_preset> `

**Build**

`cmake --build --preset <msvc17 or your_custom_preset> --config <Debug or Release>`

When building, `CMake` will copy `SDL2.dll` to the output directory
