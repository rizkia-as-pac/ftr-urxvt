for pkg in $(cat ./arch-official-packages.txt); do
  read -p "Do you want to remove package '$pkg' (y/n)? " confirm
  if [[ $confirm == [Yy] ]]; then
    sudo pacman -Rnsu --confirm "$pkg"
  else
    echo "Skipping package '$pkg'."
  fi
done

mv ./config.sh ./exclude-config.sh
mv ./Xresources ./exclude-Xresources
