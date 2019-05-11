Installing Vyper

- Ensure you have python3.6 installed
- Install vyper in a virtualenv

```
mkvirtualenv -p `which python3.6` vyper
workon vyper
git clone https://github.com/ethereum/vyper.git
cd vyper
make
make test
```
