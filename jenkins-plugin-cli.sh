#!/bin/bash

exec /bin/bash -c "java $JAVA_OPTS -jar $(pwd)/jenkins-plugin-manager.jar $*"
