# TIL

---

---

## HOW TO

---

---

### Setting

1. 레포지토리의 최상위 디렉토리에서 ./init.sh 를 실행합니다

2. 안내되는 대로 이름과 github nickname을 입력합니다 ex)

3. setting이 완료되었습니다

ex)
```bash
> ./init.sh
Welcome to Easy-TIL (ver 0.1)
For initial setting, please input your name and github nickname
Name : 박찬호
Github Nickname : charlieppark
```

---
---

### Daliy TIL

1. ./.config/make-til.sh을 통해 오늘의 TIL markdown을 생성합니다.

2. ./TIL/{GITHUB_NICKNAME} 폴더에 생성된 오늘자의 TIL 파일을 작성합니다

3. ./.config/commit.sh을 통해 커밋을 진행합니다

4. 스크립트가 커밋이 가능한 파일을 안내합니다. 최초 커밋시에는 파일이 아닌 폴더를 안내합니다. 커밋하고자 하는 파일(폴더)의 번호를 입력하면 됩니다.

ex)
```bash
> ./.config/commit.sh
Choose a file you wanna commit :
1) TIL/charlieppark/
#? (여기에 커서가 위치한다. 커밋하고자 하는 1을 입력)
```

커밋 메시지의 통일성을 위해서 되도록 본 스크립트를 이용하여 커밋해주시길 바랍니다. 수동 커밋을 원할 경우, 스크립트 내에서 커밋 메시지 형식을 확인한 후 커밋하시길 바랍니다.

---
---

### Pull Request

TIL 커밋을 마쳤다면, Pull Request를 열어 merge를 요청합니다

Pull Request시 이름은

<ID>(<날짜>)

ex) charlieppark(22-01-03)

와 같은 형식으로 올려주시면 됩니다. (에러가 없다면 자동으로 commit 이름에 맞게 Pull Request가 설정될 것 입니다)

커밋 메시지 등 형식상 문제가 없다면 리더가 확인 후 머지합니다
