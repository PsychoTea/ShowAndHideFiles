echo "Creating scripts..."

echo "Creating showfiles script..."

sudo echo "defaults write com.apple.finder AppleShowAllFiles YES" > /usr/bin/showfiles
sudo echo "killall Finder" >> /usr/bin/showfiles

cat /usr/bin/showfiles

echo "------"

echo "Creating hidefiles script..."

sudo echo "defaults write com.apple.finder AppleShowAllFiles NO" > /usr/bin/hidefiles
sudo echo "killall Finder" >> /usr/bin/hidefiles

cat /usr/bin/hidefiles

echo "------"

chmod 775 /usr/bin/showfiles
chmod 755 /usr/bin/hidefiles

echo "Done."

exit