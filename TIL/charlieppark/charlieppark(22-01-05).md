![header](https://capsule-render.vercel.app/api?type=soft&color=084B8A&height=20&section=header)
# Today I Learned

NAME : 박찬호

GITHUB NICKNAME : charlieppark

---

### ※ Content

1. fork()

unistd.h 헤더 include 시 fork() 사용 가능. fork를 통해서 자기 자신의 copy인 자식 프로세스를 생성할 수 있다. 이때 자식 프로세스는 부모 프로세스와 다른 고유한 PID를 갖는다.

2. 고아 프로세스 (Orphan) & 좀비 프로세스 (Zombie)

부모 프로세스가 자식 프로세스보다 먼저 종료되면 init이 새로운 부모 프로세스가 된다.
자식 프로세스가 부모 프로세스보다 먼저 종료되면, 자식 프로세스의 메모리는 사용 가능하게 해제되지만 프로세스 자체는 프로세스의 상태를 가진 상태로 계속 남아있다. 부모 프로세스에서 자식 프로세스의 종료 상태를 회수하면 좀비 프로세스는 제거된다.

3. Daemon

Daemon은 백그라운드에서 계속 실행되면서 작업을 처리하는 프로그램이다. 웹 서버, 시스템 로거와 같이 항상 실행되고 있으며, daemon 프로그램 중에 syslogd 처럼 이름 끝에 d를 붙이는 경우가 있다. Daemon을 생성하기 위해 위의 방법대로 고아 프로세스를 생성하는데, 이를 'fork off and die'라고 한다. Daemon은 프로세스 트리에서 PID 1의 init 아래에 위치하며, 우분투에서 /etc/init.d/ 하위에 위치한다. 실행과 정지 등은 service 명령어를 통해 관리할 수 있으며, Daemon을 등록시에는 /etc/init.d/의 프로그램을 /etc/rc3.d/와 같이 현재 Run level에 맞는 디렉토리에 symbolic link를 생성함으로서 가능하다.

---

### Retrospective

피곤한 하루. 생활 리듬을 정상화시킬 필요가 있다.

![footer](https://capsule-render.vercel.app/api?type=soft&color=084B8A&height=20&section=footer)
