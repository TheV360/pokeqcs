# Linux

	sudo apt-get install make git python

	sudo apt-get install byacc flex pkg-config libpng-dev
	git clone https://github.com/rednex/rgbds
	cd rgbds
	sudo make install
	cd ..

	git clone git://github.com/y-ack/pokeqcs.git --depth=1
	cd pokeqcs

To build **pokered.gbc** and **pokeblue.gbc**:

	make

To build them individually:

	make red
	make blue


# Mac

Get [**Homebrew**](http://brew.sh/).

Then in **Terminal**, run:

	xcode-select --install
	brew install rgbds

	git clone git://github.com/y-ack/pokeqcs.git --depth=1
	cd pokeqcs

	make



# Windows

It is probably easiest to just follow [**This Video Tutorial**](https://www.youtube.com/watch?v=fYytG7IUUWg).
Just use this project's url instead of the vanilla Pokered url.


Original instructions are below:

To build on Windows, use [**Cygwin**](http://cygwin.com/install.html) (64-bit). Use the default settings.

In the installer, select the following packages:
- `make`
- `git`
- `python`

Then download [**rgbds**](https://github.com/bentley/rgbds/releases).
Extract the archive. Inside should be `rgbasm.exe`, `rgblink.exe`, `rgbfix.exe`, `rgbgfx.exe` and some `.dll` files. Put each file in `C:\cygwin64\usr\local\bin\`. If your Cygwin installation directory differs, ensure the `bin` directory is present in the PATH variable.

In the **Cygwin terminal**:

	git clone git://github.com/y-ack/pokeqcs.git --depth=1
	cd pokeqcs

	make
	
"pokered.gbc" will be the "Normal" version and "pokeblue.gbc" will be the "Hard" version.
