.ONESHELL:

PATCH_NAME=0002-Call-nftables-tools-instead-of-legacy-xtables-tools.patch
PATCH_PATH=../0002-Call-nftables-tools-instead-of-legacy-xtables-tools.patch

push:
	cd ferm-2.5.1
	# Patches may already be applied by 'apt source'
	quilt push -a || true
	quilt import -P $(PATCH_NAME) $(PATCH_PATH)
	quilt push

clean:
	cd ferm-2.5.1
	quilt delete $(PATCH_NAME)
	quilt pop -a

