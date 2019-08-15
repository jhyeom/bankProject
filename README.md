# BankProject

## 개발환경
- 개발프레임 워크 : SPRING BOOT
- 개발언어 : JAVA,  MariaDB, Javascript, HTML, CSS, mybatis
- 오픈소스 : boot strap
- 빌드 : maven


## DB 테이블명 정의서
**사용한 DB : mariaDB**
- 고객 거래내역 데이터 => tran_list
- 고객 데이터 => account
- 지점 데이터 => branch

## Data configuration
    spring.datasource.url={url}
    spring.datasource.username={id}
    spring.datasource.password={password}

## 실행방법
1. 소스 다운로드
2. Spring boot상의 자체 서버 실행
3. http://localhost:8080/bankAPItest url 호출
4. API 단위테스트 페이지 Open
