# AtCoder

## Setup

Install online-judge-tools

```
pip3 install online-judge-tools --user
```

Export path if needed

```
export PATH=$HOME/Library/Python/3.7/bin:$PATH
```

Install atcoder-cli

```
npm install -g atcoder-cli
```

Setup template

```
ln -s ./tempaltes/ruby ~/Library/Preferences/atcoder-cli-nodejs/ruby
```

Check atcoder-cli directory

```
cd `acc config-dir`
```

## Usage

Login

```
acc login
oj login https://beta.atcoder.jp/
```

Add new tests

```
acc new <contest-id>
acc add
```

Test

```
oj t -c " ruby main.rb" -d tests
```

Submit

```
acc submit main.rb
```

or

```
acc s
```
