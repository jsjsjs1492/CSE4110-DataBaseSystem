
## 빌드 정보

본 프로젝트는 **Windows 11 64bit** 환경에서 **MinGW g++ 컴파일러**를 사용하여 빌드되었습니다. 
윈도우 기본 앱의 사용 언어는 영어(미국)으로 설정되었습니다.

**g++ 버전:** `g++ (Rev2, Built by MSYS2 project) 14.2.0`

## 환경 세팅

1.  **Connector/C++ 9.3.0 설치**
2.  **.vscode 폴더 안 `c_cpp_properties.json` 및 `settings.json`파일 설정**

    **폴더 구조**
    ```
    ├───.vscode
        └───c_cpp_properties.json
        └───settings.json
    ```


    `.vscode` 폴더는 `main.cpp`가 위치하는 폴더의 상위 디렉토리에 위치해야 합니다.

    **`c_cpp_properties.json`**
    ```json
    {
      "configurations": [
        {
          "name": "Win32",
          "includePath": [
            "${workspaceFolder}/**",
            "C:/Program Files/MySQL/MySQL Server 8.0/include" //mysql.h 위치
          ],
          "defines": [],
          "compilerPath": "C:/msys64/mingw64/bin/g++.exe",
          "cStandard": "c11",
          "cppStandard": "c++17",
          "intelliSenseMode": "windows-gcc-x64"
        }
      ],
      "version": 4
    }
    ```

    **`settings.json`**
    ```json
    {
        "files.associations": {
            "iostream": "cpp"
        }
    }
    ```

3.  **`libmysql.dll`의 위치를 Windows 시스템 환경 변수 중 PATH에 등록**

    * Windows 검색 → 환경 변수 편집
    * 시스템 변수 → Path 편집
    * `C:\Program Files\MySQL\MySQL Server 8.0\lib` (`libmysql.dll` 위치) 추가
    * VS Code 종료 후 재실행

## 빌드 명령어

`g++ main.cpp -o main -I"(mysql.h 위치)" -L"(libmysql.lib 위치)" -lmysql`

파일들의 위치에 따라 명령어는 달라질 수 있지만, 일반적으로 아래와 같은 명령어를 사용합니다.

**최종 빌드 명령어:**
`g++ main.cpp -o main -I"C:/Program Files/MySQL/MySQL Server 8.0/include" -L"C:/Program Files/MySQL/MySQL Server 8.0/lib" -lmysql`

**빌드 후 실행 명령어:**
`main`

## 코드 설명

1.  **`void init_query(string *query)` 함수**

    이 함수는 **TYPE 1부터 TYPE 7까지**, 사용자의 요구에 맞춰 미리 SQL 쿼리 틀을 작성하고 배열에 저장합니다.

    * **TYPE 1**과 **TYPE 6**은 사용자의 입력을 받아서 쿼리를 완성해야 하므로, 사용자의 입력이 필요한 부분을 제외한 나머지 쿼리를 작성하여 저장합니다.
    * 나머지 TYPE은 사용자의 입력이 불필요하므로 완성된 쿼리를 저장해둡니다.

2.  **코드 흐름 (Code Flow)**

    `main.cpp` 코드를 실행하면 우선 다음과 같은 화면이 출력됩니다:

    ```
    ----------- SELECT QUERY TYPES -----------

            1. TYPE 1
            2. TYPE 2
            3. TYPE 3
            4. TYPE 4
            5. TYPE 5
            6. TYPE 6
            7. TYPE 7
            0. QUIT

    Select:
    ```

    각 타입의 번호(숫자)를 입력하면 다음과 같이 동작합니다:

    * **TYPE 1**과 **TYPE 2**는 사용자의 입력을 받고, `void init_query(string *query)` 함수에서 미리 작성해둔 쿼리를 완성하여 실행합니다.
    * **TYPE 1**과 **TYPE 2**를 제외한 나머지는 사용자의 입력을 받지 않고, `void init_query(string *query)` 함수에서 미리 작성해둔 쿼리를 완성하여 실행합니다.
    
    * `mysql_query(conn, sql_query.c_str())`를 이용하여 미리 연결된 데이터베이스에 쿼리를 전송하고, `res = mysql_store_result(conn);`로 결과를 `res`에 저장합니다.
    * 이후 `res`에 저장된 결과 테이블을 출력합니다. 이때 `cout << left << setw(40)`을 사용하여 출력값들을 40칸 내에서 왼쪽으로 정렬합니다.

---