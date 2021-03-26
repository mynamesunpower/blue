from flask import Flask
from io import BytesIO
import numpy as np
import base64
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import csv
import pandas as pd
import pymongo
# 한글 글꼴 설정
from matplotlib import font_manager, rc
import platform
# 그래프에서 한글 표기를 위한 글꼴 변경(윈도우, macOS에 대해 처리)
font_path = ''
if platform.system() == 'Windows':
    font_path = 'c:/Windows/Fonts/malgun.ttf'
    font_name = font_manager.FontProperties(fname=font_path).get_name()
    rc('font', family=font_name)
elif platform.system() == 'Darwin':
    font_path = '/Users/$USER/Library/Fonts/AppleGothic.ttf'
    rc('font', family='AppleGothic')
else:
    print('Check your OS system')
# 글씨 크기
matplotlib.rcParams.update({'font.size': 9})
app = Flask(__name__)
app.debug = True
# 지역별 분포
@app.route("/getBarChartBase64")
def getBarChartBase64():
    fig, ax = plt.subplots(figsize=(18,8))
    # data
    df = pd.read_csv('festival_data.csv', encoding='utf-8')
    da = df['지역'].value_counts(ascending=False).head(20)
    print(da.index)
    print(da.values)
    ax.barh(da.index, da.values, align='center', color='green', ecolor='black')
    ax.set_title('지역별 분포')
    ax.set_xlabel('축제 수')
    # ax.set_ylabel('지역')
    # ax.spines['left'].set_position('center')
    # 라벨 글꼴 크기
    ax.title.set_size(25)
    ax.xaxis.label.set_size(20)
    ax.yaxis.label.set_size(20)
    plt.xticks(fontsize=15)
    ax.tick_params(axis='y', labelsize=10)
    plt.xticks([0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50])
    # 축 반전
    ax.invert_xaxis()
    ax.invert_yaxis()
    # y축 오른쪽으로
    ax.yaxis.set_label_position("right")
    ax.yaxis.tick_right()
    plt.ylabel('지역        ', position=(0.8, 1), verticalalignment='top', horizontalalignment='right', rotation='horizontal')
    # 그리드
    plt.grid(True, axis='x', alpha=0.5, linestyle='--')
    # ax.yaxis.set_ticks_position('top')
    # plt.ylabel('지역', position=(0, 1), verticalalignment='top', rotation='horizontal')
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
# 이용 요금
@app.route("/getPieChartBase64")
def getPieChartBase64():
    # kind변수를 활용하여 동적인 차트 구성 가능
    print('헤헤')
    fig = plt.figure(figsize=(4, 3))
    # data
    df = pd.read_csv('festival_data.csv', encoding='utf-8')
    gratis = sum(df['이용요금'] == "무료")
    noinfo = df['이용요금'].isnull().sum()
    print(gratis)  # 223
    print(noinfo)  # 89
    gratis_perc = gratis / len(df)
    nogratis_perc = 1 - (gratis / len(df)) - (noinfo / len(df))
    noinfo_perc = noinfo / len(df)
    ratio = [gratis_perc, nogratis_perc, noinfo_perc]
    labels = ["무료", "유료", "기타(정보 없음)"]
    plt.pie(ratio, labels=labels, autopct="%.1f%%")
    plt.title('축제 이용요금 여부')
    # plt.show()
    # print(da.index)
    # print(da.values)
    # xs = [10,20,30,40] # x축 데이터
    # ys = [1,2,3,4] # y축 데이터
    # plt.scatter(xs, ys, s=100, marker='h', color='red', alpha=0.3)
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
# 축제 형태 별 가격 구성
@app.route("/getBarChartBase64_2")
def getBarChartBase64_2():
    print('헤헤')
    fig = plt.figure(figsize=(7, 2))
    # data
    df = pd.read_csv('festival_data.csv', encoding='utf-8')
    gratisonline = ((df['축제형태'] == "온라인") & (df['이용요금'] == "무료")).sum()
    nogratisonline = ((df['축제형태'] == "온라인") & ((df['이용요금'] == "무료") == False) & (df['이용요금'].isnull() == False)).sum()
    gratisoffline = ((df.축제형태.str.contains("온라인") == False) & (df['이용요금'] == "무료")).sum()
    nogratisoffline = ((df.축제형태.str.contains("온라인") == False) & ((df['이용요금'] == "무료") == False) & (df['이용요금'].isnull() == False)).sum()
    print(gratisoffline)  # 47
    print(gratisonline)  # 25
    print(nogratisoffline) # 84 140 121
    print(nogratisonline) # 4 10 26
    print((df.이용요금.str.contains("무료") == False).sum())  #331 - 257
    print(((df['이용요금'] == "무료") == False).sum()) # 223 - 454
    A = np.array([gratisonline, nogratisonline])
    B = np.array([gratisoffline, nogratisoffline])
    Pos = range(2)
    plt.barh(Pos, A, label='무료', height=0.6)
    plt.barh(Pos, B, left=A, label='유료', height=0.6)
    # plt.barh(x, y)
    # for i, v in enumerate(x):
    #     plt.text(v, y[i], y[i],  # 좌표 (x축 = v, y축 = y[0]..y[1], 표시 = y[0]..y[1])
    #              fontsize=9,
    #              color='black',
    #              horizontalalignment='center',  # horizontalalignment (left, center, right)
    #              verticalalignment='bottom')
    plt.title('축제형태에 따른 이용 요금 구성')
    plt.yticks(Pos, ['온라인', '오프라인'])
    plt.xlabel('축제 수')
    plt.legend()
    plt.tight_layout()
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
# 상세정보 숙박 조회수
@app.route("/getBarChartLodgment")
def getBarChartLodgment():
    # results = lodgment.find()
    #
    # for result in results:
    #     print(result["title"])
    #     print(result["views"])
    # print(type(result["title"])) --> str으로 이루어진 dict들
    # print(type(result["views"])) --> int로 이루어진 dict들
    # 다운받기
    path = 'D:/python/blue'
    file_name = 'lodgment_views.csv'
    testpath = path + '/' + file_name
    i = 0
    results = list(lodgment.find())
    print(results)
    with open(testpath, 'w', newline='', encoding='utf-8-sig') as output:
        csvout = csv.DictWriter(output, ['숙박업소명', '조회수'])
        csvout.writeheader()
        for result in results:
            wr = csv.writer(output)
            wr.writerow([result['title'], result['views']])
            # 진행률을 출력하기 위한 부분
            i += 1
            if i % 100:
                print("{} finished".format(i))
    print('[{}] End!!!'.format(coll))
    fig, ax = plt.subplots(figsize=(18, 8))
    # data
    df1 = pd.read_csv('lodgment_views.csv', encoding='utf-8')
    print(type(df1))
    # df2 = pd.DataFrame(df1)
    df = df1.sort_values(by='조회수', axis=0, ascending=False).head(5)
    # if len(df['조회수'])>=5:
    #     df = df['조회수'].sort_values(by='조회수', axis=0).head(5)
    # else:
    #     df = df['조회수'].sample(n=3)
    hotels = df['숙박업소명']
    clicks = df['조회수']
    ax.bar(hotels, clicks, align='center')
    ax.set_title('숙박 페이지 방문자 수 TOP5')
    # 라벨 글꼴 크기
    ax.title.set_size(40)
    ax.xaxis.label.set_size(30)
    ax.yaxis.label.set_size(30)
    plt.xticks(fontsize=20)
    plt.yticks(fontsize=20)
    # plt.yticks(np.arange(1, 10))
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
# 상세정보 식당 조회수
@app.route("/getBarChartRestaurant")
def getBarChartRestaurant():
    # pymongo
    connection = pymongo.MongoClient('mongodb://localhost:27017')
    db = connection["database"]
    # collection 객체 할당받기
    coll = ''
    # lodgment = db.get_collection('lodgment')
    # festival = db.get_collection('festival')
    restaurant = db.get_collection('restaurant')
    collection_list = db.collection_names()
    print(collection_list)
    # 다운받기
    path = 'D:/python/blue'
    file_name = 'restaurant_views.csv'
    testpath = path + '/' + file_name
    i = 0
    results = list(restaurant.find())
    with open(testpath, 'w', newline='', encoding='utf-8-sig') as output:
        csvout = csv.DictWriter(output, ['식당명', '조회수'])
        csvout.writeheader()
        for result in results:
            wr = csv.writer(output)
            wr.writerow([result['title'], result['views']])
            # 진행률을 출력하기 위한 부분
            i += 1
            if i % 100:
                print("{} finished".format(i))
    print('[{}] End!!!'.format(coll))
    fig, ax = plt.subplots(figsize=(18, 8))
    # data
    df1 = pd.read_csv('restaurant_views.csv', encoding='utf-8')
    print(type(df1))
    # df2 = pd.DataFrame(df1)
    df = df1.sort_values(by='조회수', axis=0, ascending=False).head(5)
    # if len(df['조회수'])>=5:
    #     df = df['조회수'].sort_values(by='조회수', axis=0).head(5)
    # else:
    #     df = df['조회수'].sample(n=3)
    hotels = df['식당명']
    clicks = df['조회수']
    ax.bar(hotels, clicks, align='center')
    ax.set_title('식당 페이지 방문자 수 TOP5')
    # 라벨 글꼴 크기
    ax.title.set_size(40)
    ax.xaxis.label.set_size(30)
    ax.yaxis.label.set_size(30)
    plt.xticks(fontsize=20)
    plt.yticks(fontsize=20)
    # plt.yticks(np.arange(1, 10))
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
# 상세정보 축제 조회수
@app.route("/getBarChartFestival")
def getBarChartFestival():
    # results = lodgment.find()
    #
    # for result in results:
    #     print(result["title"])
    #     print(result["views"])
    # print(type(result["title"])) --> str으로 이루어진 dict들
    # print(type(result["views"])) --> int로 이루어진 dict들
    festival = db.get_collection('festival')
    # 다운받기
    path = 'D:/python/blue'
    file_name = 'festival_views.csv'
    testpath = path + '/' + file_name
    i = 0
    results = list(festival.find())
    with open(testpath, 'w', newline='', encoding='utf-8-sig') as output:
        csvout = csv.DictWriter(output, ['축제명', '조회수'])
        csvout.writeheader()
        for result in results:
            wr = csv.writer(output)
            wr.writerow([result['title'], result['views']])
            # 진행률을 출력하기 위한 부분
            i += 1
            if i % 100:
                print("{} finished".format(i))
    print('[{}] End!!!'.format(coll))
    fig, ax = plt.subplots(figsize=(35, 20))
    # data
    df1 = pd.read_csv('festival_views.csv', encoding='utf-8')
    print(type(df1))
    # df2 = pd.DataFrame(df1)
    df = df1.sort_values(by='조회수', axis=0, ascending=False).head(5)
    # if len(df['조회수'])>=5:
    #     df = df['조회수'].sort_values(by='조회수', axis=0).head(5)
    # else:
    #     df = df['조회수'].sample(n=3)
    hotels = df['축제명']
    clicks = df['조회수']
    ax.bar(hotels, clicks, align='center')
    ax.set_title('축제 페이지 방문자 수 TOP5')
    # 라벨 글꼴 크기
    ax.title.set_size(50)
    # ax.xaxis.label.set_size(33)
    # ax.yaxis.label.set_size(50)
    plt.xticks(fontsize=25)
    plt.yticks(fontsize=30)
    # plt.yticks(np.arange(1, 10))
    plt.xticks(rotation=12)
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
if __name__ == '__main__':
    # pymongo
    connection = pymongo.MongoClient('mongodb://localhost:27017')
    db = connection["database"]
    # collection 객체 할당받기
    coll = ''
    lodgment = db.get_collection('lodgment')
    # festival = db.get_collection('festival')
    # restaurant = db.get_collection('restaurant')
    collection_list = db.collection_names()
    print(collection_list)
    app.run(host='localhost')