NAME=$1

cstat=$(nasm -felf64 $NAME.asm)

if [ -x $cstat ]; then
    lstat=$(ld $NAME.o -o $NAME.out)
    if [ -x $lstat]; then
        ./$NAME.out
        rm $NAME.o
    else
        echo "File linking failed."
    fi
else
    echo "Could not compile $NAME.asm"
fi