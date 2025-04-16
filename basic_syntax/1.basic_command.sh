
# gid add . 은 모든 변경 또는 추가 사항을 staging area로 이동하는 명령어이다.
git add .

# git commit -m "메시지" 은 staging area의 변경 사항을 확정 짓고, commitID를 생성하고 명령어이다.
git commit -m "메시지"

# git push는 local repository까지 확정했던 변경 사항(커밋 사항)들이 원격 repository로 올라간다.
# git push origin main은 main 브랜치 변경 사항(commitID)을 원격 repository에다 업로드 하겠다는 명령어이다.
git push origin main


# --------------------------------
# 커밋 ID 조회 X
# add 또는 변경한 상황. 현재 working directory, staging area까지 올라온 경우 상태 조회
git status

# 특정 파일만 add 할 경우
git add 특정파일(위치포함)

# 모든 파일 add
git add .

# loacl repository에 커밋 이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi 에디터 모드에서 작성 : 첫 줄에는 제목, 두 번째 줄부터 내용
git commit 

# add와 commit을 동시에
git commit -am "add와 commit 동시에"

# local repository의 commit 이력 조회
git log

# git 로그를 간결하게 조회
git log --oneline

# git 로그를 그래프 형태로 조회 # 잘 사용되지는 않는다.
git log --graph

# main 브랜치 뿐만 아니라 전체 commit 이력을 조회
git log -all


# 충돌 무시하고 강제 push (혼자 작업할 때만 사용할 것)
git push origin main --force



