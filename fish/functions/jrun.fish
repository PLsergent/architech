# Make a directory for the project and then a "build" directory in it.
# Put your ".java" files in the base of the project and make it your cwd.
# Then just run "jrun <myclass>.java"

# !! DON'T PUT "package" at the top of your class !!


function jrun
    set app (echo $argv | sed 's/.java//')

    if not [ -e build ]
        mkdir build
    end

    javac -d "build" {$app}.java; and cd "build"; java $app; or cd -
    cd -
end
