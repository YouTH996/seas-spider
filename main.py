# -*- coding: UTF-8 -*-
# -*- author: Zhan Xinjian -*-
import requests
import json
import time
from utils import sql_util


# 定义header
def get_header():
    header = {
        "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "accept-encoding": "gzip, deflate, br",
        "accept-language": "zh-CN,zh;q=0.9,en;q=0.8,en-US;q=0.7",
        "content-type": "application/x-www-form-urlencoded",
        "cache-control": "max-age=0",
        "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"",
        "sec-ch-ua-mobile": "?0",
        "sec-ch-ua-platform": "\"Windows\"",
        "sec-fetch-dest": "document",
        "sec-fetch-mode": "navigate",
        "sec-fetch-use": "?1",
        "sec-fetch-site": "none",
        "upgrade-insecure-requests": "1",
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36"
    }
    return header


# 设置payload
def get_payload(page=4, pageSize=40, title="", isOrderByQuotedPrice=1, isOrderByCurPendingEndTime=1, statusList=5):
    data = {
        "page": page,
        "pageSize": pageSize,
        "title": title,
        "isOrderByQuotedPrice": isOrderByQuotedPrice,
        "isOrderByCurPendingEndTime": isOrderByCurPendingEndTime,
        "statusList[0]": statusList,
    }
    return data


# 获取列表数据
def get_data(url, page):
    header = get_header()
    payload = get_payload(page=page)
    repose = requests.get(url=url, headers=header, params=payload)
    if (repose.status_code != 200):
        return []
    array = []
    for item in json.loads(repose.text)['data']:
        prefix = "https://www.7seasnft.com/web_api/artwork/detail?id="
        array.append(prefix + str(item['id']))
    return array


# 获取详情
def get_detail_data(url):
    header = get_header()
    repose = requests.get(url=url, headers=header)
    if (repose.status_code != 200):
        return []
    item = json.loads(repose.text)['data']
    if item['auctionEndTime'] is None:
        return None
    status_flag = int(item['status']) == 5
    auctionEndTime_flag = (float(item['auctionEndTime'])) / 1000 > time.time()
    # 判断竞拍是否已经开始了
    if (status_flag & auctionEndTime_flag):
        return item
    return None


# 保存进数据库操作
def save_data(coin):
    dbUtil = sql_util.DBUtil()
    sql_util.DBUtil.get_conn(dbUtil)
    insert_sql = "INSERT INTO `seas_coin`( `coin_id`, `coin_url`, `auction_starting_price`, " \
                 "`last_trade_price`, `max_quoted_price`, `auction_end_time`) VALUES (";
    coin_url = "https://7seasnft.com/product-details-v1-" + str(coin['id'])
    # 判断值是否有空
    auction_starting_price = str(coin['auctionStartingPrice']) if coin['auctionStartingPrice'] != None else 'null'
    last_trade_price = str(coin['lastTradePrice']) if coin['lastTradePrice'] != None else 'null'
    max_quoted_price = str(coin['maxQuotedPrice']) if coin['maxQuotedPrice'] != None else 'null'
    auction_end_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(int(coin['auctionEndTime']) / 1000)) \
        if coin['auctionEndTime'] != None else 'null'

    value = str((coin['id'])) + "," + '\'' + coin_url + '\'' + "," + auction_starting_price + "," + \
            last_trade_price + "," + max_quoted_price + "," + '\'' + auction_end_time + '\'' + ")";
    insert_sql += value
    sql_util.DBUtil.insert(dbUtil, insert_sql)
    sql_util.DBUtil.close_conn(dbUtil)


if __name__ == '__main__':
    page = input("请输入要爬取的页码:")
    print("数据爬取中，请稍候...")
    array = get_data("https://www.7seasnft.com/web_api/artwork/list", page)
    for item in array:
        coin = get_detail_data(item)
        if ((coin != None) & (coin != [])):
            save_data(coin)
    print("数据爬取结束")