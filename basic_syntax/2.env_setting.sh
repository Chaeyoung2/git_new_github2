# ------------------------------------
# github 인증 방법 2가지

# 1. oauth 인증 방식 (제 3자 인증 - 웹 로그인)
# 2. pat token 인증 방식 : github에서 직접 보안키 발급
# 발급한 키를 키체인(자격 증명)에 등록

# ------------------------------------
# git 프로젝트 생성 방법 2가지

# 방법 1. github에서 진행 중인 원격 repository를 clone 받는다.
# 방법 2. 로컬에서부터 이미 진행 중인 프로젝트를 github에 업로드 한다.

# 해당 프로젝트 위치에 .git 폴더(각종 repository 주소와 사용자 정보 등이 들어가 있음)가 생성
git init

# 원격지 github 주소를 생성 및 추가한다.
git remote add origin 레포주소

# 원격지 주소를 삭제한다. 이미 .git 폴더 안에 있는 주소지를 삭제한다.
git remote remove origin

# 원격지 주소 변경
git remote set-url origin 레포주소

# git 설정 정보 조회
git config --list


# ------------------------------------
# 타인 레포 clone 받는 방법 2가지

# 1. 커밋 이력 그대로 가져오기
git clone 타인 레포 주소

# 해당 폴더로 이동 후 github 레포주소 변경
git remote set-url origin 나의 레포 주소
git push origin main # push라는 것은 내 로컬 컴퓨터에 저장(.git)된 커밋 이력을 push 하겠다는 거임. clone 했기 때문에 로컬 리포에 커밋 이력이 그대로 있으므로 그대로 add, commit 없이 push 하면 된다.

# 2. 커밋 이력 없이 레포 가져오기
git clone 타인 레포 주소

# 해당 폴더 안으로 이동 후, .git폴더 삭제
git init
git remote add origin 나의레포주소
git add .
git commit -m "first" #.git 폴더 삭제함으로서 커밋 이력이 아예 없다. 최초의 커밋 이력 만들어줌.
git push origin master


# ------------------------------------
# 사용자 지정 방법
# 전역적 사용자 (name, email) 지정
git config --global user.name "유저 네임"
git config --global user.email "유저 이메일"

# 지역적 사용자 지정
git config --local user.name "유저 네임"
git config --local user.email "유저 이메일"

# 사용자 정보 조회
git config user.name
git config user.email
git config --list


# ------------------------------------
# git ignore

# 특정 파일을 git 추적 목록에서 제외시키고 싶다면 .gitignore 파일에 파일 목록 등록
# 이미 add, commit 되어 버린 파일을 추적 목록에서 제외하고 싶다면 키 값을 변경시킨다. 파일이 트래킹 되기 전에 제외시키거나.
git rm -r --cached .