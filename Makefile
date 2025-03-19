# Variables
DESTDIR ?= /
THEME_DIR = $(DESTDIR)/usr/share/sddm/themes/steamfork
TARFILE = steamfork-sddm.tar.gz

.PHONY: all install package

all: install package

install:
	echo "Installing files to $(THEME_DIR)..."
	install -d $(THEME_DIR)
	install -m 644 LICENSE $(THEME_DIR)
	install -d $(THEME_DIR)/Assets
	install -m 644 Assets/User.svgz $(THEME_DIR)/Assets
	install -m 644 Assets/Reboot.svgz $(THEME_DIR)/Assets
	install -m 644 Assets/Hibernate.svgz $(THEME_DIR)/Assets
	install -m 644 Assets/Suspend.svgz $(THEME_DIR)/Assets
	install -m 644 Assets/Shutdown.svgz $(THEME_DIR)/Assets
	install -m 644 metadata.desktop $(THEME_DIR)
	install -m 644 CREDITS $(THEME_DIR)
	install -m 644 Background.png $(THEME_DIR)
	install -d $(THEME_DIR)/Components
	install -m 644 Components/Clock.qml $(THEME_DIR)/Components
	install -m 644 Components/SessionButton.qml $(THEME_DIR)/Components
	install -m 644 Components/LoginForm.qml $(THEME_DIR)/Components
	install -m 644 Components/Input.qml $(THEME_DIR)/Components
	install -m 644 Components/SystemButtons.qml $(THEME_DIR)/Components
	install -m 644 Components/UserList.qml $(THEME_DIR)/Components
	install -m 644 Components/VirtualKeyboard.qml $(THEME_DIR)/Components
	install -m 644 Main.qml $(THEME_DIR)
	install -m 644 AUTHORS $(THEME_DIR)
	install -m 644 theme.conf $(THEME_DIR)
	echo "Installation complete."

package:
	echo "Creating compressed tarball $(TARFILE)..."
	tar -czvf $(TARFILE) LICENSE Assets metadata.desktop CREDITS Background.png Components Main.qml AUTHORS theme.conf
	echo "Compression complete."
