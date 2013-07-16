zfslib.pyc: zfslib.py
	python -c 'import compileall ; compileall.compile_dir(dir=".",quiet=True)'

install:
	mkdir -p $(DESTDIR)/usr/bin $(DESTDIR)/usr/lib/pymodules/python2.7
	cp zfs-fetch-pool zfs-shell zmirror zsnap zreplicate $(DESTDIR)/usr/bin
	cp zfslib.py zfslib.pyc $(DESTDIR)/usr/lib/pymodules/python2.7
	mkdir -p $(DESTDIR)/etc/sudoers.d
	cp sudoers.zfs-tools $(DESTDIR)/etc/sudoers.d/zfs-tools
	chmod 440 $(DESTDIR)/etc/sudoers.d/zfs-tools

.PHONY = install
