#Write a simple rc script and run the scripts of the previous tasks to show how it works. Create git
#repository and push all created files to github. Send to the classroom only the link for github where are
#the answers to the questions


#!/bin/sh

. /etc/init.d

[ -f /usr/local/sbin/task3.sh ] || exit 0

case "$1" in


        start)
                echo "Script started"
                /usr/local/sbin/task3.sh &
                echo "--------------------"
                touch /var/lock/subsys/taskrc
                ;;
        stop)
                echo -n "Stopping"
                killall -q -9 task3.sh &
                rm -f /var/lock/subsys/taskrc
                ;;
       
        restart|reload)
                $0 stop
                $0 start
                ;;

 	status)
                status task3
                ;;
        *)
                echo "start, stop, status, restart|reload"
                exit 1
esac

exit 0
