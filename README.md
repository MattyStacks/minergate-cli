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

### Variables
I have also set up variables so that you can use them as well.
- `userName` Email Address
- `currency` Pick from below
- `cores` Number of cores to use

```
sudo docker run -d -e userName='email@email.com' -e currency='xmr' -e cores='4' minergate-cli
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

#### Dual Currency Options
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

##### Donations
Never expected but always welcome:


Bitcoin: 

```
13HyZ4sTcaKRG2w43VPBTQuUTqcYQU1Ssw
```
Monero:

```
4C5fyTXdXjF1k7WvDAJwxTbuw6G9KBZyWE5Sca2Ysi5Gd9nfryzguXELwsYTCfdf6PakU48whQaQ3f8M9T33JN6a5VSJk1FTXcRJHkCEZa
```
Ethereum:

```
0x41b0106309791B62314Df27F524e06B3881cBd01
```