![header](https://capsule-render.vercel.app/api?type=soft&color=084B8A&height=20&section=header)
# Today I Learned

NAME : 박찬호

GITHUB NICKNAME : charlieppark

---

### ※ Content

1. Reference의 쓸모 (&)

C++에서 객체를 사용할 때 Reference를 빈번하게 사용하게 된다. Reference를 코드 가독성 향상 측면에서 사용할 수 있는 방법이 있는데, 객체 a (객체 b (필드 c)) 와 같이 몇 번의 접근 연산자(.) 를 통해 접근해야 하는 경우, int &ref = a.b.c 와 같이 지정해주는 것만으로 단순화할 수 있다

2. anaconda cache clear

아나콘다 사용 시 cache의 충돌 + 접근 권한 문제로 conda의 명령어가 일체 먹히지 않는 현상이 발생할 수 있다.

```bash
NotWritableError: The current user does not have write permissions to a required path. path: /usr/anaconda3/pkgs/cache/b35683e8.json uid: 1001 gid: 100
```
와 같은 형식으로 말이다

이 때, cache 만 클리어해주면 문제가 해결된다

```bash
conda clean -a
```

3. template.sh 관련

template.sh에서 til template의 내용 전체를 redirect 하여 템플릿을 생성하는데, 첫 줄 생성 시에 >> 를 이용해 redirect 함으로써, template.sh가 반복 실행되면 내용이 중복되어 덧붙여진다. 첫 줄 생성 시에 > 를 이용하여 덮어쓰기를 쓰기로 변경한다.

---

### Retrospective

회복하는 하루. Triad는 잘 나온 것 같은데 feature 데이터가 너무 없다. 전체 그래프를 사용해야하나?

![footer](https://capsule-render.vercel.app/api?type=soft&color=084B8A&height=20&section=footer)
