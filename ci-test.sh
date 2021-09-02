

#chmod +x rosrect-ecs-api-server/src/ecs_endpoint.pynohup python3 rosrect-ecs-api-server/src/ecs_endpoint.py &

#Troubleshooting
export ECS_API=http://0.0.0.0:8000
export AGENT_POST_API=https://postman-echo.com
export ECS_DB_LOC=error_classification_server/ecs.db
echo "Checking ECS API Val"
echo $ECS_API

pip3 install wheel
pip3 install sanic==20.12.0
pip3 install databases[sqlite]==0.2.6

pip3 uninstall -y sqlalchemy
pip3 install sqlalchemy==1.3.13
#pip3 install -r error_classification_server/requirements.txt
python3 error_classification_server/src/ecs_endpoint.py & APP_PID=$!


# cd rosrect-ecs-api-server
# docker build -t rosrect_ecs_api_server .

# docker run -it \
# --env-file runtime.env \
# -p 8000:8000 \
# --name=ecs_api_server  \
# --volume="${HOME}/rosrect-ecs-api-server/ecs.db:/root/.cognicept/ecs.db" \
# --network=host \
# rosrect_ecs_api_server:latest  \
# ecs_api_server/ecs_endpoint.py

