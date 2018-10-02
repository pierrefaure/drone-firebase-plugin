#! /bin/bash

[ -z "$PLUGIN_PROJECT_ID" ] && echo "Please set the \"project_id\" parameter" && exit 1;
[ -z "$PLUGIN_MESSAGE" ] && echo "Please set the \"message\" parameter" && exit 1;
[ -z "$PLUGIN_DIR" ] && echo "Please set the \"dir\" parameter" && exit 1;

set -o xtrace && \

if [ "$PLUGIN_DEBUG" = true ] ; then
  echo $(pwd) && ls -lah;
fi && \

cd $PLUGIN_DIR && \

firebase deploy --token "$FIREBASE_TOKEN" -m "$PLUGIN_MESSAGE" --project "$PLUGIN_PROJECT_ID"