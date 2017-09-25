function __complete_jrun -d "Completions for the jrun command"
    for package in *
        for class in $package/*.java
            echo $class | sed 's/.java//'
        end
    end
end

