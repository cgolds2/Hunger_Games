pwd
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
java -Xmx6G -Xms4G -jar $DIR/server.jar
