# MacOSX Sierra

## Box
<https://github.com/AndrewDryga/vagrant-box-osx>
```
vagrant init https://vagrant-osx.nyc3.digitaloceanspaces.com/osx-sierra-0.3.1.box
```

## After install
```sh
brew update
brew install ruby-build
brew install rbenv

rbenv install 2.5.1
rbenv global 2.5.1
```

Then update `~/.profile` with:
```sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
```


https://stackoverflow.com/questions/17980759/xcode-select-active-developer-directory-error
```
xcode-select -s /Applications/Xcode.app/Contents/Developer
```
