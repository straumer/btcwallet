module github.com/straumer/btcwallet

require (
	github.com/btcsuite/btcd v0.21.0-beta.0.20210426180113-7eba688b65e5
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f
	github.com/btcsuite/btcutil v1.0.3-0.20201208143702-a53e38424cce
	github.com/btcsuite/btcutil/psbt v1.0.3-0.20201208143702-a53e38424cce
	github.com/straumer/btcwallet/wallet/txauthor v1.0.0
	github.com/straumer/btcwallet/wallet/txrules v1.0.0
	github.com/straumer/btcwallet/wallet/txsizes v1.0.0
	github.com/straumer/btcwallet/walletdb v1.3.5
	github.com/straumer/btcwallet/wtxmgr v1.3.0
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/davecgh/go-spew v1.1.1
	github.com/golang/protobuf v1.4.2
	github.com/jessevdk/go-flags v1.4.0
	github.com/jrick/logrotate v1.0.0
	github.com/kkdai/bstream v0.0.0-20181106074824-b3251f7901ec // indirect
	github.com/lightninglabs/gozmq v0.0.0-20191113021534-d20a764486bf
	github.com/lightninglabs/neutrino v0.12.1
	github.com/lightningnetwork/lnd/ticker v1.0.0
	github.com/stretchr/testify v1.5.1
	golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37
	golang.org/x/net v0.0.0-20200520004742-59133d7f0dd7
	google.golang.org/genproto v0.0.0-20190201180003-4b09977fb922 // indirect
	google.golang.org/grpc v1.18.0
)

replace github.com/straumer/btcwallet/walletdb => ./walletdb

replace github.com/straumer/btcwallet/wtxmgr => ./wtxmgr

replace github.com/straumer/btcwallet/wallet/txauthor => ./wallet/txauthor

replace github.com/straumer/btcwallet/wallet/txrules => ./wallet/txrules

replace github.com/straumer/btcwallet/wallet/txsizes => ./wallet/txsizes

// The old version of ginko that's used in btcd imports an ancient version of
// gopkg.in/fsnotify.v1 that isn't go mod compatible. We fix that import error
// by replacing ginko (which is only a test library anyway) with a more recent
// version.
replace github.com/onsi/ginkgo => github.com/onsi/ginkgo v1.14.2

go 1.13
