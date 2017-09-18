# Make a directory for the project and then a "build" and "src" directories
# in it. Put your ".java" files in "<project>/src", cd to it.
# Then just run "jrun <myclass>.java"

# !! DON'T PUT package at the top of your class !!


function jrun
    set app (echo $argv | sed 's/.java//')
    javac -d "../build" {$app}.java; and cd "../build"; java $app
    cd -
end
