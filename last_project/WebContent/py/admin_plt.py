from flask import Flask
from io import BytesIO
import numpy as np
import base64
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import csv
import pandas as pd
# 한글 encoding
# matplotlib.rcParams['axes.unicode_minus'] = False
# matplotlib.rcParams['font.family'] = "AppleGothic"
# plt.rcParams["font.family"] = 'Nanum Brush Script OTF'
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
    ax.set_ylabel('지역')
    # ax.spines['left'].set_position('center')
    # 라벨 글꼴 크기
    ax.title.set_size(25)
    ax.xaxis.label.set_size(20)
    ax.yaxis.label.set_size(20)
    # 축 반전
    ax.invert_xaxis()
    ax.invert_yaxis()
    # y축 오른쪽으로
    ax.yaxis.set_label_position("right")
    ax.yaxis.tick_right()
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
    gratis = sum(df['이용요금']=="무료")
    noinfo = df['이용요금'].isnull().sum()
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
    nogratisonline = ((df['축제형태'] == "온라인") & (df.이용요금.str.contains("무료") == False)).sum()
    gratisoffline = ((df.축제형태.str.contains("온라인") == False) & (df['이용요금'] == "무료")).sum()
    nogratisoffline = ((df.축제형태.str.contains("온라인") == False) & (df.이용요금.str.contains("무료") == False)).sum()
    A = np.array([gratisonline, nogratisonline])
    B = np.array([gratisoffline, nogratisoffline])
    Pos = range(2)
    plt.barh(Pos, A, label='무료', height=0.6)
    plt.barh(Pos, B, left=A, label='유료', height=0.6)
    plt.title('축제형태에 따른 이용 요금 구성')
    plt.yticks(Pos, ['온라인', '오프라인'])
    plt.xlabel('축제 수')
    plt.legend()
    plt.tight_layout()
    img = BytesIO()
    plt.savefig(img, format='png', dpi=200)
    return base64.b64encode(img.getvalue())
if __name__ == '__main__':
    app.run(host='localhost')