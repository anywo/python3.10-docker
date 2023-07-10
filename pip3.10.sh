# 获取当前工作目录
current_dir="$PWD"

# 获取用户主目录
home_dir="$HOME"

# 将$HOME替换为/root/u
new_dir="${current_dir//$home_dir/\/root\/u}"

docker compose -f "${HOME}/workspace/python/3.10/docker-compose.yaml" run --rm py -c "cd $new_dir && pip3 $*"
