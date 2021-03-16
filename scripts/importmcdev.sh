nms="net/minecraft"
        mkdir -p "$(dirname "$target")"
files=$(cat "$basedir/Spigot-Server-Patches/"* | grep "+++ b/src/main/java/net/minecraft/" | sort | uniq | sed 's/\+\+\+ b\/src\/main\/java\/net\/minecraft\///g')
nonnms=$(grep -R "new file mode" -B 1 "$basedir/Spigot-Server-Patches/" | grep -v "new file mode" | grep -oE "net\/minecraft\/**\/.*.java" | sed -E 's/.*\/net\/minecraft\/(.*)/\1/g')
		if [ ! -f "$workdir/Spigot/Spigot-Server/src/main/java/net/minecraft/$f" ]; then
      f="$(echo "$f" | sed 's/.java//g')"
				error=true
if [ -n "$error" ]; then
  exit 1
fi