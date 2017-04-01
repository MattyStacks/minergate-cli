# datapotomus / minergate-cli

I got tired of having to install in different places, and also though that if I wanted to give cloud mining a shot this was the fastest way.

## Usage
You can use this miner to start mining on the minergate pool.

### Examples

Will start the container detached, and start mining Fantomcoin and monero together on all cores
```
docker run -d minergate-cli -user {email} -fcn+xmr
```

Will start the container only using two cores mining Fantomcoin and Monero
```
docker run -d minergate-cli -user matthew.therault@gmail -bcn 2 -fcn+mxr 2
```


#### Currency Options
- `xmr` Monero
- `fcn` Fantomcoin
- `dsh` Dashcoin
