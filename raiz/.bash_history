flatpak install flathub app.zen_browser.zen 
sudo apt update -y
sudo apt upgrade  -y
sudo dpkg --configure -a 
sudo apt upgrade  -y
sudo apt autoremove -y 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install zsh git wget curl vim nano 
wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage 
ls
chmod u+x nvim-linux-x86_64.appimage 
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim 
nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim 
rm -rf ~/.config/nvim/.git
nvim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://go.microsoft.com/fwlink/?LinkID=760868 
flatpak install flathub com.visualstudio.code 
ls
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code 
bat
git config --get-all dionlleno
git config --get-all "dionlleno"
git config --global user.email "dionlleno@proton.me" 
git config --global user.name "dionlleno"
cd .dotfiles/
mv ../.zsh_history raiz/
stow *
stow raiz/.
stow raiz/
cd ..
ls
ls -la
cat .bash_logout 
