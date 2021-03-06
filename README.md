# Mini_Analysis
R, Python

## 전과자의 재범율 분석

전과자의 재범율이 높은지 분석

사용 언어 : R

  - 분석 목적
    - 많은 사람들은 '사람은 쉽게 바뀌지 않는다.', '사람은 고쳐쓰는게 아니다.'라는 말을 자주하곤 한다. 그래서 이 말이 범죄에도 적용되는 이야기인지 즉, 전과자들의 수가 초범자들의 수보다 많은디 범죄의 초범자의 비율과 전과자의 비율을 비교하여 정말 이 말이 맞는지를 알아보고 싶어서 분석하였다.
 
  - 분석 개요 
    - 분석 과제 : 전과자의 재범율 분석
    - 분석 데이터 : 공공 데이터 포털(https://www.data.go.kr/)의 범죄자 범행 시 전과 및 횟수(2016)
    - 분석 도구 : R
    - 분석 내용 : 범죄자 전과 및 횟수 비교

----------------------------------------------

## 서울 지하철 혼잡도 분석
출근 시간대와 퇴근 시간대(주말 포함)의 지하철 혼잡도 분석

사용 언어 : R

  - 분석 목적
    - 비교적 이용객 수가 높은 지하철 노선의 혼잡도 분석을 통하여 출퇴근 시간대에 더 편하게 갈 수 있는 노선명과 특정 역명 도출 
    - 출퇴근 시간대에 혼잡도가 높은 노선과 특정 역 분석 
    - 혼잡도 노선별, 역별 분석을 통한 혼잡도가 비교적 높은 특정 역 도출  
  
  - 분석개요
    - 분석 과제 : 지하철 혼잡도 분석
    - 분석 데이터 
      - 서울 열린데이터 광장(https://data.seoul.go.kr/)의 서울시 지하철 호선별 역별 승하차 인원 정보(2018~2020.02)
      - 서울 열린데이터 광장(https://data.seoul.go.kr/)의 서울시 지하철 호선별 역별 시간대별 승하차 인원 정보(2018~2020.02)
    - 분석 도구 : R
    - 분석 내용 
      - 서울 지하철 시간별, 월별 데이터 분석
      - 서울 지하철 노선별, 역별 데이터 분석 

----------------------------------------------

## 날씨와 공공 자전거 신규 가입의 연관성 분석

날씨와 공공 자전거의 신규 가입이 연관이 있는지 분석

사용 언어 : Python

  - 분석 목적
    - 공공자전거 신규 가입자 정보를 일별로 분석하여 신규가입과 날씨와 연관성이 있는지 확인
  
  - 분석 개요
    - 분석 과제 : 공공자전거의 신규 가입자 수와 날씨와의 연관성
    - 분석 데이터 
      - 서울 열린데이터 광장(http://data.seoul.go.kr/)의 서울특별시 공공자전거 신규가입자 정보(일별) (open API, excel 파일)
      - 기상청 기상자료개방포털(https://data.kma.go.kr/cmmn/main.do)의 기상청 기상관측자료(종관_일자료) (open API 파일)
    - 분석 도구 : Jupyter Notebook(python)
    - 분석 내용
      - 공공자전거 신규 가입자 수 분석
      - 날씨 데이터 최저/최고 기온, 평균 전운량/풍속, 강수량 분석
