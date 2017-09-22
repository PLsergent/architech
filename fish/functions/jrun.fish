function jrun --description 'Compile and run a Java program'
    set package (echo $argv | cut -d'/' -f1)
    set class (echo $argv | cut -d'/' -f2)

    javac {$package}/{$class}.java; and java {$package}.{$class}
end
