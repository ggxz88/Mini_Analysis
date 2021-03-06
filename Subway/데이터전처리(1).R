# ���̺귯�� �ҷ�����
install.packages("dplyr")
library(dplyr)

# �ʿ��� ��(����) ����
subway_202002 <- subway_202002 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_202002

subway_202001_ <- subway_202001_ %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201912_ <- subway_201912_ %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201911_ <- subway_201911_ %>% select(�������, ȣ����, ����, �����ѽ°���, �����ѽ°���)

subway_201910 <- subway_201910 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201909 <- subway_201909 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201908 <- subway_201908 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201907 <- subway_201907 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201906 <- subway_201906 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201905 <- subway_201905 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201904 <- subway_201904 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201903 <- subway_201903 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201902 <- subway_201902 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201901 <- subway_201901 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201812 <- subway_201812 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201811 <- subway_201811 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201810 <- subway_201810 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201809 <- subway_201809 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201808 <- subway_201808 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201807 <- subway_201807 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201806 <- subway_201806 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201805 <- subway_201805 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201804 <- subway_201804 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201803 <- subway_201803 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201802 <- subway_201802 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)
subway_201801 <- subway_201801 %>% select(�������, �뼱��, ����, �����ѽ°���, �����ѽ°���)

# ������ ����
subway_201911_ <- rename(subway_201911_, �뼱�� = ȣ����)

# ������ ��ġ��
subway_month1 <- bind_rows(subway_201801, subway_201802, subway_201803, subway_201804, subway_201805, subway_201806, subway_201807, subway_201808, subway_201809, subway_201810, subway_201811, subway_201812)

subway_month2 <- bind_rows(subway_201901, subway_201902, subway_201903, subway_201904, subway_201905, subway_201906, subway_201907, subway_201908)

subway_month3 <- bind_rows(subway_201909, subway_201910, subway_201911_, subway_201912_, subway_202001_, subway_202002)


# ����ġ Ȯ��
table(is.na(subway_month1))
table(is.na(subway_month2))
table(is.na(subway_month3))

# ������ ��ġ��
subway_month <- bind_rows(subway_month1, subway_month2, subway_month3)


# ����ġ Ȯ��
table(is.na(subway_month))

# �뼱���� ���(�̿밴 ���� ���� ȣ�� 15�� ��󳻱�)
subway_line <- subway_month %>%
  group_by(�뼱��) %>%
  summarise(�����ѽ°������ = mean(�����ѽ°���),
                    �����ѽ°������ = mean(�����ѽ°���))

s1 <- subway_line %>% arrange(�����ѽ°������) %>% head(11)
s1
s2 <- subway_line %>% arrange(�����ѽ°������) %>% head(11)
s2
s3 <- bind_rows(s1, s2)

table(s3$�뼱��)

# �ʿ��� �� ����
subway_month <- subway_month %>%
  filter(�뼱�� %in% c("��õ��", "�ϻ꼱", "�Ȼ꼱", "�д缱", "���μ�", "��μ�","9ȣ��", "8ȣ��", "7ȣ��", "6ȣ��", "5ȣ��", "4ȣ��", "3ȣ��", "2ȣ��", "1ȣ��"))

str(subway_month)

# �̻�ġ Ȯ�� �� NA�� ����
View(subway_month)

subway_month$�����ѽ°��� <- ifelse(subway_month$�����ѽ°��� == 0, NA, subway_month$�����ѽ°���)
subway_month$�����ѽ°��� <- ifelse(subway_month$�����ѽ°��� == 0, NA, subway_month$�����ѽ°���)

# �̻�ġ ������ ���� �뼱, ���� ���
subway_mean = subway_month %>%
  group_by(�뼱��,����) %>%
  summarise(�����ѽ°������ = mean(�����ѽ°���, na.rm = T),
                    �����ѽ°������ = mean(�����ѽ°���, na.rm = T))

# �Ǵܿ� ���� �̻�ġ ���� ����:�޸���
subway_month <- subway_month %>% filter(!is.na(subway_month$�����ѽ°���))
table(is.na(subway_month))

#
subway_1 <- subway_month %>%
  group_by(�뼱��, ����) %>%
  summarise(�����ѽ°������ = mean(�����ѽ°���),
                    �����ѽ°������ = mean(�����ѽ°���))

#subway_1 <- subway_month %>%
#  group_by(�뼱��, ����) %>%
#  summarise(�����ѽ°������ = mean(�����ѽ°���),
#                    �����ѽ°������ = mean(�����ѽ°���))%>%
#  ungroup() %>%
#  select(-�뼱��)

#station <- subway_month %>%
#  select(�뼱��, ����) %>%
#  filter(�뼱�� %in% c("��õ��", "�ϻ꼱", "�Ȼ꼱", "�д缱", "���μ�", "��μ�", "9ȣ��2�ܰ�","9ȣ��", #"8ȣ��", "7ȣ��", "6ȣ��", "5ȣ��", "4ȣ��", "3ȣ��", "2ȣ��", "1ȣ��"))

#station <- distinct(station)

#subway_1 <- left_join(station, subway_station, by = "����")

# ������/������ ���� -> ���� �� ���� ���� ���� �� ������ ȥ�⵵�� �� �Ұ����� �Ǵ�
subway_1 <- subway_1  %>%
  mutate(ratio = �����ѽ°������/�����ѽ°������)

#subway_1 <- rename(subway_1, ratio = total)

#subway_1 <- subway_1 %>% select(-ratio_)

subway_1 %>% arrange(ratio) %>%
  head(20)

subway_1 %>% arrange(desc(ratio)) %>%
  head(20)

#subway_total <- subway_1 %>%
#  ungroup()

#subway_total <- subway_total %>%
#  group_by(�뼱��, ����) %>%
#  arrange(subway_total$ratio)


