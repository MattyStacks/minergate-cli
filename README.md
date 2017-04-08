# datapotomus / minergate-cli

I got tired of having to install in different places, and also though that if I wanted to give cloud mining a shot this was the fastest way.

## Usage
You can use this miner to start mining on the minergate pool.

### Examples

Will start the container detached, and start mining Fantomcoin and monero together on all cores
```
docker run -d minergate-cli -user {email} -fcn+xmr
```

Will start the container only using two cores mining Fantomcoin and Monero and 2 mining bytecoin
```
docker run -d minergate-cli -user {email} -bcn 2 -fcn+xmr 2
```


#### Currency Options
- `bcn`  Bytecoin
- `xmr`  Monero
- `fcn`  Fantomcoin
- `dsh`  Dashcoin
- `qcn`  QuazarCoin
- `xdn`  DigitalNote
- `mcn`  MonetaVerde
- `aeon` Aeon coin
- `inf8` Infinium-8

#### Currency Options
These are the coins you can mine together.

Fantomcoin combinations
- `fcn+bcn`
- `fcn+xmr`
- `fcn+qcn`
- `fcn+xdn`
- `fcn+aeon`
- `fcn+dsh`

MonetaVerde Combinations
- `mcn+bcn`
- `mcn+xmr`
- `mcn+qcn`
- `mcn+xdn`
- `mcn+aeon`
- `mcn+dsh`