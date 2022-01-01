![header](https://capsule-render.vercel.app/api?type=soft&color=F2F5A9&height=150&section=header&text=T&nbspI&nbspL=100=blink)

# Today I Learned

NAME : 박찬호

GITHUB NICKNAME : charlieppark

---

### ※ Content

1. 멀티스레드 구현 관련
   멀티스레드로 작업을 분할하여 처리하는 과정에서 레퍼런스로 2차원 벡터를 전달한 후 값이 반환되지 않는 현상 발견. 레퍼런스 인자를 보낼 때, std::ref()를 사용하고, 함수 원형에도 &로 레퍼런스로 수정하면서 문제가 해결될 것이라고 생각했으나 실제 문제는 해결되지 않았음. 스레드 풀 구현상에서 future를 이용하여 함수 내부에서 인자로 들어올 레퍼런스 변수를 생성 및 초기화하고 future에서 한 번에 받아서 합치는 것으로 계획하고 구현 중

2. nohup 사용 시

```bash
nohup <program> > <log_file> 2>&1 &
```

와 같은 꼴로 stderr와 stdout 을 모두 하나의 로그 파일로 저장 가능. 그러나 tail -f logfile 로 출력했을 때 실시간으로 출력되지 않는 문제 발견. 이유를 찾을 필요가 있다.

---

### Retrospective

새해랍시고 해돋이를 보러 갔다. 건강한 한 해, 즐거운 한 해, 생산성 넘치는 한 해, 결실이 생기는 한 해가 되길.

![footer](https://capsule-render.vercel.app/api?type=soft&color=F2F5A9&height=150&section=footer)
