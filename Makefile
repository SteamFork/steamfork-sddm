# Variables
DESTDIR = /usr/share/sddm/themes/steamfork
TARFILE = steamfork-sddm.tar.gz

.PHONY: all install package

all: install package

install: clean
	echo "Installing files to $(DESTDIR)..."
	install -d $(DESTDIR)
	install -m 644 LICENSE $(DESTDIR)
	install -d $(DESTDIR)/Assets
	install -m 644 Assets/User.svgz $(DESTDIR)/Assets
	install -m 644 Assets/Reboot.svgz $(DESTDIR)/Assets
	install -m 644 Assets/Hibernate.svgz $(DESTDIR)/Assets
	install -m 644 Assets/Suspend.svgz $(DESTDIR)/Assets
	install -m 644 Assets/Shutdown.svgz $(DESTDIR)/Assets
	install -m 644 metadata.desktop $(DESTDIR)
	install -m 644 CREDITS $(DESTDIR)
	install -m 644 Background.png $(DESTDIR)
	install -d $(DESTDIR)/Components
	install -m 644 Components/Clock.qml $(DESTDIR)/Components
	install -m 644 Components/SessionButton.qml $(DESTDIR)/Components
	install -m 644 Components/LoginForm.qml $(DESTDIR)/Components
	install -m 644 Components/Input.qml $(DESTDIR)/Components
	install -m 644 Components/SystemButtons.qml $(DESTDIR)/Components
	install -m 644 Components/UserList.qml $(DESTDIR)/Components
	install -m 644 Components/VirtualKeyboard.qml $(DESTDIR)/Components
	install -m 644 Main.qml $(DESTDIR)
	install -m 644 AUTHORS $(DESTDIR)
	install -m 644 theme.conf $(DESTDIR)
	echo "Installation complete."

package:
	echo "Creating compressed tarball $(TARFILE)..."
	tar -czvf $(TARFILE) LICENSE Assets metadata.desktop CREDITS Background.png Components Main.qml AUTHORS theme.conf
	echo "Compression complete."
