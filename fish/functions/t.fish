function t --description 'termdown: bare number = minutes (t 5 -> termdown 5m); add a unit for else (t 90s)'
    if test (count $argv) -eq 0
        termdown
        return
    end
    set -l first $argv[1]
    if string match -qr '^[0-9]+$' -- $first
        set first "$first"m
    end
    termdown $first $argv[2..-1]
end
