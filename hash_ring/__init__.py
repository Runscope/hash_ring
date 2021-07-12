from hash_ring.ring import HashRing

try:
    from hash_ring.memcache_ring import MemcacheRing
except ImportError as e:
    pass
