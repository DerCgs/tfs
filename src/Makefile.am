AUTOMAKE_OPTIONS=foreign

if WITH_KV_META
kv_meta_dir = kv_meta_server
endif

if WITH_LIFECYCLE
SUBDIRS = tbsys tbnet common message requester clientv2 dataserver nameserver \
	rcserver monitor ${kv_meta_dir} checkserver syncserver migrateserver \
	life_cycle_manager tools 
else
SUBDIRS = tbsys tbnet common message requester clientv2 dataserver nameserver \
	rcserver monitor  ${kv_meta_dir} checkserver syncserver migrateserver \
	tools
endif
