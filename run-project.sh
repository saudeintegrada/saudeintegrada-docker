#--env HOP_PLUGIN_BASE_FOLDERS=./plugins,/files/misc/plugins \
docker run -it --rm \
  --env HOP_LOG_LEVEL=Basic \
  --env HOP_FILE_PATH='${PROJECT_HOME}/ETL-Covid19/Publicados/WF-NotificaCovid-Extras.hwf' \
  --env HOP_PROJECT_FOLDER=/files \
  --env HOP_PROJECT_NAME=saudeintegrada-dw \
  --env HOP_ENVIRONMENT_NAME=prod \
  --env HOP_ENVIRONMENT_CONFIG_FILE_NAME_PATHS=/files/prod-config.json \
  --env HOP_SHARED_JDBC_FOLDER=/files/misc/drivers \
  --env HOP_RUN_CONFIG=local \
  --env HOP_RUN_PARAMETERS=PARAM_LOG_MESSAGE=Hello,PARAM_WAIT_FOR_X_MINUTES=1 \
  -v /mnt/e/Arquivos/Documentos/Github/BI/saudeintegrada-dw:/files \
  --name my-simple-hop-container \
  saudeintegrada/hop-cpython:1.2
