#!/usr/bin/env python
# coding: utf-8

# ### 데이터 크롤링하기
# - 엑셀 파일에서 축제 정보

# In[2]:


from bs4 import BeautifulSoup
import time
import pandas as pd

df = pd.read_excel('data/festival.xls')
len(df)


# 

# ### DataFrame 만들기
# - '제품' 컬럼의 중복된 행을 제거한다.
# - to_csv 명령으로 파일을 저장한다.

# In[4]:


# import pandas as pd
# column_name = ['제품', '가격', '평점', '상세설명']
# df = pd.DataFrame(data=rows, columns=column_name)
# final = df.drop_duplicates(subset=['제품'],ignore_index=True)
# final.to_csv('./raw_data.csv', encoding='utf-8-sig')


# 

# ### 데이터 전처리
# ##### 파일에서 데이터를 읽어 DataFrame으로
# - 먼저, 결측치가 있는 행을 제거한다
# - 결측치가 있는 행을 제거하면서 사라진 인덱스를 재설정하여 원본에 적용한다.

# In[3]:


df.info()
#print(df.shape[0])
df.head(5)


# 

# ### 주소 분리
# - 분리하여 데이터프레임의 4번 컬럼 위치에 삽입한다.
# - 이후 주소 컬럼을 제거한다.

# In[4]:


# 시
city_list = []
# 이외
town_list = []

for add in df['주소']:
    add_info = add.split(' ', 1)  # 한 번 스플릿
    if len(add_info) == 1:
        city_name = add_info[0]
        town_name = add_info[0]       
    else:
        city = add_info[0]
        town = add_info[1]

        town_info = town.split(' ', 1)
        if len(town_info) <= 1:
            town_info.append('')
    
    #print(city +" "+ town_info[0] + "/" + town_info[1])로 확인       
    
    city_list.append((city +" "+ town_info[0]).strip())
    town_list.append(town_info[1].strip())

    
print(city_list) # 시-구
print(town_list) # 그 외 주소


# df.insert(4, '지역', city_list)
# df.insert(4, '상세 주소', town_list)

# final.drop(['주소'], axis=1, inplace=True)


# ### 가격 전처리

# In[ ]:





# ### 시각화

# In[39]:


import matplotlib.pyplot as plt
from matplotlib import font_manager, rc
plt.rcParams['axes.unicode_minus']=False
rc('font', family='Malgun Gothic')

# 1. 지역별 분포

# import seaborn as sns
df['지역'].describe()
da = df['지역'].value_counts().head(20)
da.sort_values(ascending=True).plot(kind='barh')
plt.figure(figsize=(12, 8))
# plt.spring()
# plt.subplot('611')
# ax = sns.barplot(data=da)
# ax.set_title('지역별 분포')
# print()