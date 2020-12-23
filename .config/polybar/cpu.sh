#!/bin/sh
case "$1" in
    --popup)
            notify-send "CPU time (%)" "$(ps axch -o cmd:10,pcpu k -pcpu | head | awk '$0=$0"%"' )"
	            ;;
		        *)
			        echo "CPU $(grep 'cpu ' /proc/stat | awk '{cpu_usage=($2+$4)*100/($2+$4+$5)}
				        END {printf "%0.2f%", cpu_usage}')
					         '{print $2}')"
						        ;;
							esac
