# set-executionpolicy remotesigned #un-comment this line if powerhell script are disabled
$SDL_VERSION = "2.30.4" #Latest version of sdl

mkdir sdl_installation
cd sdl_installation
echo "Getting SDL $SDL_VERSION "
wget https://github.com/libsdl-org/SDL/releases/latest/download/SDL2-devel-$SDL_VERSION-VC.zip -o sdl.zip
echo "Done !" 
echo "Unziping SDL .." 
Expand-Archive sdl.zip windows_install/ 
echo "Done !"
echo "Removing temp file"
Remove-Item sdl.zip
echo "Done !" 
echo "Then, you can specify the correct path in the cmake preset" 
cd ..

# then specify the correct path in the cmake preset 
