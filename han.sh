while [ -n "$1" ]; do
case $1 in
-h) help;shift 1;; # function help is called
--) shift;break;; # end of options
-*) error "error: no such option $1. -h for help";;
*) break;;
esac
done
