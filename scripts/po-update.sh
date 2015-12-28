#!/bin/bash

cd "$(dirname "$0")/../po"

echo "Updating POT template..."
intltool-update --pot --gettext-package=pidgin-birthday-reminder

for f in *.po; do
	echo "Checking ${f%.po} language file..."
	intltool-update ${f%.po}
done

