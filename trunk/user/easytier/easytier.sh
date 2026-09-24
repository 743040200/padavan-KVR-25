#!/bin/sh
et_core="/usr/bin/easytier-core"
et_cli="/usr/bin/easytier-cli"

et_enable=$(nvram get easytier_enable)
config_server=$(nvram get easytier_server)
et_log_level=$(nvram get easytier_loglevel)
et_port=$(nvram get easytier_port)
tun_name=$(nvram get easytier_tunname)
hostname=$(nvram get easytier_hostname)
extra_args=$(nvram get easytier_extraargs)
et_uuid=$(nvram get easytier_uuid)

log() {
  logger -t "[EasyTier]" "$1"
}

start() {
  if [ "$et_enable" != "1" ];then
    log "未启用，退出"
    return 0
  fi

  if [ ! -f "$et_core" ];then
    log "错误：程序不存在 $et_core"
    return 1
  fi

  killall -q easytier-core
  sleep 0.3

  CMD="$et_core"
  [ -n "$config_server" ] && CMD="$CMD -w $config_server"
  [ -n "$et_log_level" ] && CMD="$CMD --log-level $et_log_level"
  [ -n "$et_port" ] && CMD="$CMD --udp-port $et_port"
  [ -n "$tun_name" ] && CMD="$CMD --tun-name $tun_name"
  [ -n "$hostname" ] && CMD="$CMD --name $hostname"
  [ -n "$et_uuid" ] && CMD="$CMD --instance-id $et_uuid"
  [ -n "$extra_args" ] && CMD="$CMD $extra_args"

  log "启动命令：$CMD"
  $CMD &
  log "启动完成"
}

stop() {
  log "正在停止 easytier‑core"
  killall -q easytier-core
}

restart() {
  stop
  sleep 0.5
  start
}

case "$1" in
start) start ;;
stop) stop ;;
restart) restart ;;
*) echo "usage: $0 start|stop|restart" ;;
esac