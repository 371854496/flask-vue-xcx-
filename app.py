from flask import Flask, render_template, jsonify,json
from random import *
from flask_cors import CORS
import requests
from flask import request
from sqlalchemy import create_engine, Table, MetaData
from sqlalchemy.orm import Session
from sqlalchemy.sql import func
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import *
from sqlalchemy.orm import sessionmaker
import datetime,time

from gevent import monkey
from gevent.pywsgi import WSGIServer
# monkey.patch_all()

engine = create_engine(
    'mysql+pymysql://root:123456@127.0.0.1:3306/xiaoba?charset=utf8',
    echo = True)
Base = declarative_base()
# # 反射数据库单表
# metadata = MetaData()
# Admin = Table('member', metadata, autoload=True, autoload_with=engine)

session = Session(engine)

app = Flask(__name__,
            static_folder = "./dist/static",
            template_folder = "./dist")
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})
# cors = CORS(app, resources={r"/getMsg": {"origins": "*"}})
# cors=CORS(app, supports_credentials=True)
def to_dict(self):
    return {c.name: getattr(self, c.name, None) for c in self.__table__.columns}
Base.to_dict = to_dict


def single_to_dict(self):
    return {c.name: getattr(self, c.name,None) for c in self.__table__.columns}
Base.single_to_dict = single_to_dict

class banner(Base):
    __tablename__ = 'banner'

    bid = Column(Integer, primary_key=True)
    img_url = Column('img_url', String(120))

class phone(Base):
    __tablename__ = 'phone'

    phone_id = Column(Integer, primary_key=True)
    phone_family_id = Column(Integer)
    pname = Column('pname', String(120))
    title = Column('title', String(120))
    subtitle = Column('subtitle', String(120))
    spec = Column('spec', String(120))
    network = Column('network', String(120))
    color = Column('color', String(120))
    price = Column('price', Numeric)
    pcount = Column('pcount', Numeric)
    expire = Column('expire', Numeric,default=0)

class family(Base):
    __tablename__ = 'family'

    fid = Column(Integer, primary_key=True)
    fname = Column('fname', String(120))
    detail = Column('detail', String(120))

class pic(Base):
    __tablename__ = 'pic'

    pid = Column(Integer, primary_key=True)
    phone_id = Column(Integer)
    fid = Column(Integer)
    color = Column('color', String(120))
    img1 = Column('img1', String(120))
    img2 = Column('img2', String(120))
    img3 = Column('img3', String(120))
    img4 = Column('img4', String(120))

class user(Base):
    __tablename__ = 'user'

    uid = Column(Integer, primary_key=True)
    uname = Column('uname', String(120))
    upwd = Column('upwd', String(120))
    tel = Column('tel', Numeric)
    avatar = Column('avatar', String(120))
    mtime = Column(DateTime, default=datetime.datetime.now)
    ip = Column('ip', String(120))

class log(Base):
    __tablename__ = 'log'

    tid = Column(Integer, primary_key=True)
    uid = Column(Integer)
    optime = Column(DateTime, default=datetime.datetime.now)
    desct = Column('desct', String(120))

class code(Base):
    __tablename__ = 'code'

    codeid = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    phone = Column('phone', String(120))
    code=Column('code', Numeric)
    login_time = Column(DateTime, default=datetime.datetime.now)

class member(Base):
    __tablename__ = 'member'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric,default=110)
    openid = Column('openid', Numeric,default=110)
    nickname = Column('nickname', String(120))
    realname = Column('realname', String(120),default=110)
    avatarurl = Column('avatarurl', String(120))
    birthday=Column(DateTime, default=datetime.datetime.now)
    gender=Column('gender', Numeric)
    telnumber = Column('telnumber', Numeric,default=110)
    levelid = Column('levelid', Numeric,default=110)
    city = Column('city', String(120))
    province = Column('province', String(120))
    country = Column('country', String(120))
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)
    isvip = Column('isvip', Numeric,default=110)
    invitecode = Column('invitecode', Numeric,default=110)
    parentid= Column('parentid', Numeric,default=110)
    storecode= Column('storecode', Numeric,default=110)
    storename = Column('storename', Numeric,default=110)
    idcard = Column('idcard', Numeric,default=110)

class shoppingcart(Base):
    __tablename__ = 'shoppingcart'

    id = Column(Integer, primary_key=True)
    memid = Column('memid', Numeric, default=110)
    merid=Column('merid', Numeric,default=110)
    itemid = Column('itemid', Numeric, default=110)
    num= Column('num', Numeric, default=110)
    sku = Column('sku', String(120))
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class applyshop(Base):
    __tablename__ = 'applyshop'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    memid= Column('memid', Numeric)
    realname = Column('realname', String(120))
    telphone = Column('telphone', Numeric)
    state = Column('state', Numeric)
    city = Column('city', String(120))
    province = Column('province', String(120))
    county = Column('county', String(120))
    school = Column('school', String(120))
    refusereason = Column('refusereason', String(120))
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class category(Base):
    __tablename__ = 'category'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    catename = Column('catename', String(120))
    catepic = Column('catepic', String(120))
    sortvalue = Column('sortvalue', Numeric)
    parentid = Column('parentid', Numeric)
    ishidden = Column('ishidden', Numeric)
    isrecommend = Column('isrecommend', Numeric)
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class item(Base):
    __tablename__ = 'item'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    title = Column('title', String(120))
    itemtype=Column('itemtype', Numeric)
    itemmodel = Column('itemmodel', Numeric)
    cateid = Column('cateid', Numeric)
    marketprice = Column('marketprice', Float)
    price = Column('price', Float)
    num= Column('num', Numeric)
    description = Column('description', String(240))
    picurl= Column('picurl', String(240))
    istop = Column('istop', Numeric)
    isrecommend = Column('isrecommend', Numeric)
    ishidden = Column('ishidden', Numeric)
    vipprice = Column('vipprice', Numeric)
    oldprice = Column('oldprice', Numeric)
    integral = Column('integral', Numeric)
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)
    seckillbegin = Column(DateTime, default=datetime.datetime.now)
    seckillend = Column(DateTime, default=datetime.datetime.now)
# us1 = applyshop(merid=1014,memid=1,realname='很少',telphone=13022212321,state=1,city="宁德",province="福建", county="寿宁",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us2 = applyshop(merid=1014,memid=2,realname='大声地',telphone=13022212321,state=1,city="买断",province="福建", county="福安",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us3 = applyshop(merid=1014,memid=3,realname='狒狒',telphone=13022212321,state=1,city="品牌",province="福建", county="罗江",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us4 = applyshop(merid=1014,memid=4,realname='味儿',telphone=13022212321,state=1,city="天天",province="福建", county="蛇口",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us5 = applyshop(merid=1014,memid=5,realname='天天',telphone=13022212321,state=1,city="更好",province="福建", county="舞曲",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us6 = applyshop(merid=1014,memid=6,realname='儿童',telphone=13022212321,state=1,city="很好",province="福建", county="很是",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us7 = applyshop(merid=1014,memid=7,realname='嘤嘤嘤',telphone=13022212321,state=1,city="宁德",province="福建", county="按时",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us8 = applyshop(merid=1014,memid=8,realname='一样',telphone=13022212321,state=1,city="宁德",province="福建", county="得到",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us9 = applyshop(merid=1014,memid=9,realname='uu',telphone=13022212321,state=1,city="宁德",province="福建", county="狒狒",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us10 = applyshop(merid=1014,memid=10,realname='更改',telphone=13022212321,state=1,city="宁德",province="福建", county="非凡哥",school="寿宁一中",refusereason="坏了",createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
#
# session.add_all([us1,us2,us3,us4,us5,us6,us7,us8,us9,us10])
# session.commit()

class articletype(Base):
    __tablename__ = 'articletype'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    name = Column('name', String(120))
    sortvalue = Column('sortvalue', Numeric)
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class article(Base):
    __tablename__ = 'article'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    title = Column('title', String(120))
    typeid= Column('typeid', Numeric)
    content = Column('content', String(120))
    picture = Column('picture', String(120))
    remark = Column('remark', String(120))
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)
    linktype = Column('linktype', Numeric)

class coupon(Base):
    __tablename__ = 'coupon'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    couponname = Column('couponname', String(120))
    brandname = Column('brandname', String(120))
    coupontype = Column('coupontype', Numeric)
    couponnum = Column('couponnum', Numeric)
    remainnum = Column('remainnum', Numeric)
    price = Column('price', Numeric)
    minprice = Column('minprice', Numeric)
    couponmodel=Column('couponmodel', Numeric)
    cutprice = Column('cutprice', Numeric)
    maxnum = Column('maxnum', Numeric)
    couponscene = Column('couponscene', Numeric)
    couponscope = Column('couponscope', Numeric)
    couponitemids = Column('couponitemids', Numeric)
    usertype=Column('usertype', Numeric)
    duration = Column('duration', Numeric)
    isissued = Column('isissued', Numeric)
    iscancel = Column('iscancel', Numeric)
    uselimit = Column('uselimit', Numeric)
    remark = Column('remark', String(120))
    expiretime = Column(DateTime, default=datetime.datetime.now)
    issuetime = Column(DateTime, default=datetime.datetime.now)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)


class swiper(Base):
    __tablename__ = 'swiper'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    title = Column('title', String(120))
    picurl = Column('picurl', String(120))
    linkurl = Column('linkurl', String(120))
    sortvalue = Column('sortvalue', Numeric)
    createtime=Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class repair(Base):
    __tablename__ = 'repair'

    id = Column(Integer, primary_key=True)
    merid=Column('merid', Numeric)
    memid = Column('memid', Numeric)
    realname = Column('realname', String(120))
    telphone = Column('telphone', Numeric)
    telphone = Column('telphone', Numeric)
    faultimg = Column('faultimg', String(120))
    malfunction=Column('malfunction', String(120))
    repairtype = Column('repairtype', Numeric)
    state = Column('state', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)
    brand = Column('brand', String(120))

class movedeposit(Base):
    __tablename__ = 'movedeposit'

    id = Column(Integer, primary_key=True)
    turnover = Column('turnover', Numeric)
    memid = Column('memid', Numeric)
    money= Column('money', Numeric)
    servicecharge = Column('servicecharge', Numeric)
    state = Column('state', Numeric)
    realname = Column('realname', String(120))
    bankcard = Column('bankcard', Numeric)
    banktype = Column('banktype', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)
# us1 = movedeposit(turnover=1014,memid=0,realname='很少',money=112321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us2 = movedeposit(turnover=1014,memid=2,realname='十点多',money=112321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us3 = movedeposit(turnover=1014,memid=3,realname='狒狒',money=12321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us4 = movedeposit(turnover=1014,memid=4,realname='嗯嗯',money=1321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us5 = movedeposit(turnover=1014,memid=5,realname='撒大声',money=2321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us6 = movedeposit(turnover=1014,memid=6,realname='是的',money=1321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us7 = movedeposit(turnover=1014,memid=7,realname='嘻嘻',money=1321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us8 = movedeposit(turnover=1014,memid=8,realname='那你',money=1321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us9 = movedeposit(turnover=1014,memid=9,realname='啊啊',money=13321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
# us10 = movedeposit(turnover=1014,memid=10,realname='请求',money=12321,servicecharge=12,state=1,bankcard=2,banktype=3,createtime="2018-11-12 10:20:10",updatetime="2018-11-12 10:20:10")
#
#
# session.add_all([us1,us2,us3,us4,us5,us6,us7,us8,us9,us10])
# session.commit()

class configuration(Base):
    __tablename__ = 'configuration'

    id = Column(Integer, primary_key=True)
    name = Column('name', String(120))
    title = Column('title', String(120))
    scale = Column('scale', Numeric)

class administrator(Base):
    __tablename__ = 'administrator'

    id = Column(Integer, primary_key=True)
    merid = Column('merid', Numeric)
    mobile = Column('mobile', Numeric)
    isauth = Column('isauth', Numeric)
    token = Column('token', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)




class company(Base):
    __tablename__ = 'company'

    merid = Column(Integer, primary_key=True)
    shopname = Column('shopname', String(120))
    company = Column('company', String(120))
    realname = Column('realname', String(120))
    logo = Column('logo', String(120))
    wechat= Column('wechat', String(120))
    mail = Column('mail', String(120))
    address = Column('address', String(120))
    industry= Column('industry', String(120))
    mobile = Column('mobile', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class itemsku(Base):
    __tablename__ = 'itemsku'

    id = Column(Integer, primary_key=True)
    merid = Column('merid', String(120))
    attrvalue= Column('attrvalue', String(120))
    itemid= Column('itemid', Numeric)
    price = Column('price', Numeric)
    quantity = Column('quantity', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class favorite(Base):
    __tablename__ = 'favorite'

    memid = Column(Integer, primary_key=True)
    itemid= Column('itemid', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)

class itemevaluate(Base):
    __tablename__ = 'itemevaluate'

    id = Column(Integer, primary_key=True)
    # memid  = Column('memid ', String(120))
    itemid= Column('itemid', Numeric)
    avatarurl = Column('avatarurl', String(120))
    nickname = Column('nickname', String(120))
    itemsku = Column('itemsku', String(120))
    remark = Column('remark', String(120))
    evaluateurls = Column('evaluateurls', String(120))
    rate = Column('rate', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)


class shippingaddress(Base):
    __tablename__ = 'shippingaddress'

    id = Column(Integer, primary_key=True)
    memid= Column('memid', Numeric)
    nickname = Column('nickname', String(120))
    province = Column('province', String(120))
    city = Column('city', String(120))
    county = Column('county', String(120))
    detailinfo = Column('detailinfo', String(120))
    isdefault = Column('isdefault', Numeric)
    telnumber = Column('telnumber', Numeric)
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class orderaddress(Base):
    __tablename__ = 'orderaddress'

    id = Column(Integer, primary_key=True)
    orderid= Column('orderid', Numeric)
    telephone = Column('telephone', Numeric)
    realname = Column('realname', String(120))
    province = Column('province', String(120))
    city = Column('city', String(120))
    district = Column('district', String(120))
    address = Column('address', String(120))
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class paymentlog(Base):
    __tablename__ = 'paymentlog'

    id = Column(Integer, primary_key=True)
    orderid= Column('orderid', Numeric)
    amount = Column('amount', Numeric)
    paystatus = Column('paystatus', Numeric)
    paymethod = Column('paymethod', String(120))
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)

class odrlist(Base):
    __tablename__ = 'odrlist'

    id = Column(Integer, primary_key=True)
    openid=Column('openid', String(120))
    addressid = Column('addressid', String(120))
    telephone = Column('telephone', String(120))
    realname = Column('realname', String(120))
    province = Column('province', String(120))
    city = Column('city', String(120))
    district = Column('district', String(120))
    address = Column('address', String(120))
    orderid= Column('orderid',  String(120))
    amount = Column('amount', String(120))
    paystatus = Column('paystatus', String(120))
    paytype= Column('paytype', String(120))
    shopcarts = Column('shopcarts', String(1000))
    createtime = Column(DateTime, default=datetime.datetime.now)
    updatetime = Column(DateTime, default=datetime.datetime.now)


def DataList(tablename):
    pageindex = request.form.get("pageindex")
    PageIndex=int(pageindex)
    pagesize = request.form.get("pagesize")
    PageSize=int(pagesize)
    allDataCount = session.query(tablename).all()
    totalcount = session.query(tablename).order_by(tablename.createtime.desc())[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
    dataList = []
    for r in totalcount:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    response = {
        'msg': '成功',
        'result':1,
        'data': dataList,
        'totalcount': len(allDataCount)
    }
    return jsonify(response)

def NoPage(tablename):
    allDataCount = session.query(tablename).all()
    dataList = []
    for r in allDataCount:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    response = {
        'msg': '成功',
        'result':1,
        'data': dataList,
        'totalcount': len(allDataCount)
    }
    return jsonify(response)

def ListData(filterDatat):
    dataList = []
    for r in filterDatat:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    return  dataList

def SelctTerm(allDataCount,totalcount):
    dataList = []
    for r in totalcount:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    response = {
        'msg': '成功',
        'result':1,
        'data': dataList,
        'totalcount': len(allDataCount)
    }
    return jsonify(response)

def AddData(tablename,keyname,value):
    add_data = tablename(keyname=value)
    session.add(add_data)
    session.commit()

def funcGet(getid,tablename):
    if request.method == "POST":
        id = request.form.get(getid)
        totalcount = session.query(tablename).filter(tablename.id == id).first()
        dataList = totalcount.single_to_dict()  # {'id': 1, 'username': 'admin', 'email': 'admin@example.com'}
        response = {
            'msg': '成功',
            'result': 1,
            'data': dataList,
        }
        return jsonify(response)

def funcDelete(id,tablename):
    if request.method == "POST":
        pageindex = request.form.get("pageindex")
        PageIndex = int(pageindex)
        pagesize = request.form.get("pagesize")
        PageSize = int(pagesize)
        id = request.form.get(id)
        totalcount = session.query(tablename).filter(tablename.id == id).first()
        session.delete(totalcount)
        session.commit()

        allDataCount = session.query(tablename).all()
        totalcount = session.query(tablename).order_by(tablename.updatetime.desc())[
                     (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
        dataList = []
        for r in totalcount:
            row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
            dataList.append(row2dict(r))
        response = {
            'msg': '成功',
            'result': 1,
            'data': dataList,
            'totalcount': len(allDataCount)
        }
        return jsonify(response)

def funcEdit(tableName,editId,editDict):
    if request.method == "POST":
        session.query(tableName).filter(tableName.id == editId).update(editDict)
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)
def funcAdd(keyName,tablename):
    if request.method == "POST":
        value = request.form.get(keyName)
        editkey = keyName.replace('"', '')
        print("editkey",editkey)
        addData = tablename(editkey=value)
        session.add(addData)
        #   添加数据后、数据保存到电脑内存上，并没有添加到数据库中，需使用 session.commit() 方法将数据提交到数据库中。
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
         }
        return jsonify(response)

def funcTime(updatetime):
    endArray = time.localtime(updatetime)
    endTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
    return  endTime

def update_date(tablename,filkey,passname,key,newValue):
    result = session.query(tablename).filter_by(filkey = passname).first()
    result.key = newValue
    session.commit()
    response = {
        'msg': '成功',
        'result': 1,
    }
    return jsonify(response)


@app.route('/api/banner', methods=['GET', 'POST'])
def bannerList():
    return DataList(banner)

@app.route('/api/phone', methods=['GET', 'POST'])
def phoneList():
    return DataList(phone)

@app.route('/api/family', methods=['GET', 'POST'])
def familyList():
    return DataList(family)

@app.route('/api/pic', methods=['GET', 'POST'])
def picList():
    return DataList(pic)

@app.route('/api/user', methods=['GET', 'POST'])
def userList():
    return DataList(user)

@app.route('/api/log', methods=['GET', 'POST'])
def logList():
    return DataList(log)

@app.route('/admin/administrator/smslogin', methods=['GET', 'POST'])
def codeList():
    if request.method == "POST":
        mobile = request.form.get("mobile")
        iptcode= request.form.get("code")
        print(mobile, iptcode)
        ifPhoneExist = session.query(code).filter_by(phone = mobile).first()
        print("ifPhoneExist",ifPhoneExist)
        ifCode= session.query(code).filter_by(code=iptcode).first()
        print("ifCode", ifCode)
        if ifPhoneExist!=None and ifCode!=None:
            return  NoPage(code)
        else:
            response = {
                'msg': '验证码错误',
                'result': 0,
            }
            return jsonify(response)




@app.route('/admin/member/list', methods=['GET', 'POST'])
def memberList():
    if request.method == "POST":
        pageindex = request.form.get("pageindex")
        PageIndex = int(pageindex)
        pagesize = request.form.get("pagesize")
        PageSize = int(pagesize)
        isvip = request.form.get("isvip")
        begin= request.form.get("begin")
        end = request.form.get("end")
        nickname = request.form.get("nickname")
        if begin!=None and nickname==None:
            beginArray = time.localtime(int(begin))
            beginTime = time.strftime("%Y--%m--%d %H:%M:%S", beginArray)
            endArray = time.localtime(int(end))
            endTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
            if isvip !="-1":
                print("不等于-1")
                allDataCount = session.query(member).filter(and_(member.updatetime.between(beginTime, endTime),member.isvip==isvip)).all()
                totalcount = session.query(member).filter(and_(member.updatetime.between(beginTime, endTime), member.isvip == isvip))[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                dataList = []
                for r in totalcount:
                    row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
                    dataList.append(row2dict(r))
                response = {
                    'msg': '成功',
                    'result': 1,
                    'data': dataList,
                    'totalcount': len(allDataCount)
                }
                return jsonify(response)

            else:
                print("等于-1")
                allDataCount = session.query(member).filter(member.updatetime.between(beginTime, endTime)).all()
                totalcount = session.query(member).filter(member.updatetime.between(beginTime, endTime))[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                dataList = []
                for r in totalcount:
                    row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
                    dataList.append(row2dict(r))
                response = {
                    'msg': '成功',
                    'result': 1,
                    'data': dataList,
                    'totalcount': len(allDataCount)
                }
                return jsonify(response)

        else:
            return DataList(member)

@app.route('/admin/applyshop/list', methods=['GET', 'POST'])
def applyshopList():
    if request.method == "POST":
        state= request.form.get("state")
        pageindex = request.form.get("pageindex")
        pagesize = request.form.get("pagesize")
        if state=="-1":
            return DataList(applyshop)
        else:
            allDataCount = session.query(applyshop).filter_by(state=state).all()
            totalcount = session.query(applyshop).filter_by(state=state).order_by(applyshop.updatetime.desc())[int(pageindex)*int(pagesize):(int(pageindex)*int(pagesize))+int(pagesize)]
            dataList = []
            for r in totalcount:
                row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
                dataList.append(row2dict(r))
            response = {
                'msg': '成功',
                'result': 1,
                'data': dataList,
                'totalcount': len(allDataCount)
            }
            return jsonify(response)

@app.route('/admin/applyshop/updatestate', methods=['GET', 'POST'])
def updatestate():
    if request.method == "POST":
        resultState= request.form.get("state")
        applyid = request.form.get("applyid")
        result = session.query(applyshop).filter_by(id=int(applyid)).first()
        result.state = int(resultState)
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)


@app.route('/admin/category/list', methods=['GET', 'POST'])
def categoryList():
    return DataList(category)

@app.route('/admin/category/get', methods=['GET', 'POST'])
def categoryGet():
    return funcGet("cateid",category)

@app.route('/admin/category/add', methods=['GET', 'POST'])
def categoryAdd():
    if request.method == "POST":
        addcatename= request.form.get("catename")
        addcatepic = request.form.get("catepic")
        addsortvalue = request.form.get("sortvalue")
        addisrecommend = request.form.get("isrecommend")
        addparentid = request.form.get("parentid")
        addishidden = request.form.get("ishidden")
        addData= category(catename=addcatename,catepic=addcatepic,sortvalue=addsortvalue,isrecommend=addisrecommend,parentid=addparentid,ishidden=addishidden)
        session.add(addData)
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)

@app.route('/admin/category/edit', methods=['GET', 'POST'])
def categoryEdit():
    if request.method == "POST":
        editid = request.form.get("id")
        catename = request.form.get("catename")
        ishidden = request.form.get("ishidden")
        parentid = request.form.get("parentid")
        isrecommend = request.form.get("isrecommend")
        sortvalue = request.form.get("sortvalue")
        result = session.query(category).filter(category.id == editid).first()
        result.catename= catename
        result.ishidden = ishidden
        result.isrecommend = isrecommend
        result.parentid = parentid
        result.sortvalue = sortvalue

        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)


@app.route('/admin/category/del', methods=['GET', 'POST'])
def categoryDelete():
    return  funcDelete("cateid",category)

@app.route('/admin/member/get', methods=['GET', 'POST'])
def memberGet():
    if request.method == "POST":
        memid= request.form.get("memid")
        totalcount = session.query(member).filter(member.id == memid).first()
        dataList=totalcount.single_to_dict()  # {'id': 1, 'username': 'admin', 'email': 'admin@example.com'}
        response = {
            'msg': '成功',
            'result': 1,
            'data': dataList,
        }
        return jsonify(response)

@app.route('/admin/item/add', methods=['GET', 'POST'])
def itemAdd():
    if request.method == "POST":
        title = request.form.get("title")
        merid = request.form.get("merid")
        cateid = request.form.get("cateid")
        itemtype = request.form.get("itemtype")
        itemmodel = request.form.get("itemmodel")
        marketprice = request.form.get("marketprice")
        price = request.form.get("price")
        num = request.form.get("num")
        picurl = request.form.get("picurl")
        description = request.form.get("description")
        isrecommend = request.form.get("isrecommend")
        ishidden= request.form.get("ishidden")
        additem = item(merid=merid,title=title,cateid =cateid,itemtype=itemtype,itemmodel =itemmodel,marketprice =marketprice,price=price,num=num,picurl=picurl,description =description ,isrecommend=isrecommend,ishidden=ishidden)
        session.add(additem)
        #   添加数据后、数据保存到电脑内存上，并没有添加到数据库中，需使用 session.commit() 方法将数据提交到数据库中。
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
         }
        return jsonify(response)

@app.route('/admin/item/list', methods=['GET', 'POST'])
def itemList():
    if request.method == "POST":
        pageindex = request.form.get("pageindex")
        PageIndex = int(pageindex)
        pagesize = request.form.get("pagesize")
        PageSize = int(pagesize)
        ishidden = request.form.get("ishidden")
        keywords= request.form.get("keywords")
        itemmodel = request.form.get("itemmodel")
        if ishidden != "-1":
            if itemmodel!=None:
                allDataCount = session.query(item).filter(item.itemmodel == itemmodel).all()
                totalcount = session.query(item).filter(item.itemmodel== itemmodel)[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)
            else:
                allDataCount = session.query(item).filter(or_(item.ishidden == ishidden)).all()
                totalcount = session.query(item).filter(item.ishidden == ishidden)[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)
            if keywords != "":
                print("有kw")
                allDataCount = session.query(item).filter(
                    and_(item.title == keywords, item.ishidden == ishidden)).all()
                totalcount = session.query(item).filter(
                    and_(item.title == keywords, item.ishidden == ishidden))[
                             (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)
            else:
                allDataCount = session.query(item).filter(item.ishidden == ishidden).all()
                totalcount = session.query(item).filter(item.ishidden == ishidden)[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)

        else:
            if keywords != "":
                print("有kw")
                allDataCount = session.query(item).filter(
                    or_(item.title == keywords, item.ishidden == ishidden)).all()
                totalcount = session.query(item).filter(
                    or_(item.title == keywords, item.ishidden == ishidden))[
                             (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)
            else:
                return DataList(item)

@app.route('/admin/item/get', methods=['GET', 'POST'])
def itemGet():
    if request.method == "POST":
        itemid= request.form.get("itemid")
        totalcount = session.query(item).filter(item.id == itemid).first()
        dataList=totalcount.single_to_dict()  # {'id': 1, 'username': 'admin', 'email': 'admin@example.com'}
        response = {
            'msg': '成功',
            'result': 1,
            'data': dataList,
        }
        return jsonify(response)

@app.route('/admin/item/edit', methods=['GET', 'POST'])
def itemEdit():
    if request.method == "POST":
        itemid= request.form.get("id")
        description = request.form.get("description")
        ishidden = request.form.get("ishidden")
        isrecommend = request.form.get("isrecommend")
        marketprice = request.form.get("marketprice")
        num = request.form.get("num")
        oldprice = request.form.get("oldprice")
        price = request.form.get("price")
        title = request.form.get("title")
        result = session.query(item).filter(item.id == itemid).first()
        result.description = description
        result.ishidden = ishidden
        result.isrecommend = isrecommend
        result.marketprice = marketprice
        result.num = num
        result.oldprice = oldprice
        result.price = price
        result.title = title

        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)

@app.route('/admin/item/editbymodel', methods=['GET', 'POST'])
def itemModelEdit():
    # return funcEdit("itemid",'itemmodel', item)
    itemmodel = request.form.get("itemmodel")
    editid = request.form.get("itemid")
    seckillbegin = request.form.get("seckillbegin")
    seckillend= request.form.get("seckillend")
    if seckillbegin!=None:
        beginArray = time.localtime(int(seckillbegin))
        beginTime = time.strftime("%Y--%m--%d %H:%M:%S", beginArray)
        endArray = time.localtime(int(seckillend))
        endTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
        result = session.query(item).filter(item.id == editid).first()
        result.itemmodel = itemmodel
        result.seckillbegin = beginTime
        result.seckillend = endTime
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)
    else:

        result = session.query(item).filter(item.id == editid).first()
        result.itemmodel = itemmodel
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)

@app.route('/admin/item/repealmodel', methods=['GET', 'POST'])
def repealmodel():
    editid = request.form.get("itemid")
    result = session.query(item).filter(item.id == editid).first()
    result.itemmodel = 1
    session.commit()
    response = {
        'msg': '成功',
        'result': 1,
    }
    return jsonify(response)

@app.route('/admin/articletype/list', methods=['GET', 'POST'])
def articletypeList():
    return NoPage(articletype)

@app.route('/admin/article/list', methods=['GET', 'POST'])
def articleList():
    return DataList(article)

@app.route('/admin/article/get', methods=['GET', 'POST'])
def articleGet():
    return funcGet('artid',article)

@app.route('/admin/article/add', methods=['GET', 'POST'])
def articleAdd():
    if request.method == "POST":
        title = request.form.get("title")
        merid = request.form.get("merid")
        typeid= request.form.get("typeid")
        remark = request.form.get("remark")
        content = request.form.get("content")
        linktype = request.form.get("linktype")
        addData = article(merid =merid ,typeid=typeid, title=title, remark=remark, content=content, linktype=linktype,picture="https://cdn.huodongxing.com/logo/201906/1497866245700/103457411367139_v2small.jpg")
        session.add(addData)
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)

@app.route('/admin/article/edit', methods=['GET', 'POST'])
def articleEdit():
    # updatetime= request.form.get("updatetime")
    # # print("type updatetime",type(updatetime))
    # # editkey = updatetime.replace('"', '')
    # endArray = time.localtime(updatetime)
    # resultTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
    if request.method == "POST":
        editid= request.form.get("id")
        content = request.form.get("content")
        linktype = request.form.get("linktype")
        remark = request.form.get("remark")
        title = request.form.get("title")
        typeid = request.form.get("typeid")
        return  funcEdit(article, editid, {"content":content,"linktype":linktype,"remark":remark,"title":title,"typeid":typeid})

@app.route('/admin/article/del', methods=['GET', 'POST'])
def articleDel():
    return funcDelete("artid",article)



@app.route('/admin/coupon/list', methods=['GET', 'POST'])
def couponList():
    return DataList(coupon)

@app.route('/admin/swiper/list', methods=['GET', 'POST'])
def swiperList():
    return DataList(swiper)

@app.route('/admin/swiper/add', methods=['GET', 'POST'])
def swiperAdd():
    if request.method == "POST":
        title = request.form.get("title")
        linkurl = request.form.get("linkurl")
        sortvalue = request.form.get("sortvalue")
        addData = swiper(title=title,linkurl=linkurl,sortvalue=sortvalue)
        session.add(addData)
        #   添加数据后、数据保存到电脑内存上，并没有添加到数据库中，需使用 session.commit() 方法将数据提交到数据库中。
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)

@app.route('/admin/swiper/del', methods=['GET', 'POST'])
def swiperDel():
    return funcDelete("sid", swiper)

@app.route('/admin/swiper/get', methods=['GET', 'POST'])
def swiperGet():
    return funcGet("sid",swiper)

@app.route('/admin/repair/list', methods=['GET', 'POST'])
def repairList():
    if request.method == "POST":
        pageindex = request.form.get("pageindex")
        PageIndex = int(pageindex)
        pagesize = request.form.get("pagesize")
        PageSize = int(pagesize)
        state = request.form.get("state")
        if state=="-1":
            return DataList(repair)
        else:
            allDataCount = session.query(repair).filter(repair.state == state).all()
            totalcount = session.query(repair).filter(repair.state== state)[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)

@app.route('/admin/repair/editstate', methods=['GET', 'POST'])
def repairState():
    repairid = request.form.get("repairid")
    state = request.form.get("state")
    return funcEdit( repair,repairid,{"state":state})


@app.route('/admin/movedeposit/list', methods=['GET', 'POST'])
def movedepositList():
    return DataList(movedeposit)

@app.route('/admin/configuration/list', methods=['GET', 'POST'])
def configurationList():
    return NoPage(configuration)

@app.route('/admin/administrator/list', methods=['GET', 'POST'])
def administratorList():
    return DataList(administrator)

@app.route('/admin/administrator/register', methods=['GET', 'POST'])
def addRegister():
    if request.method == "POST":
        mobile= request.form.get("mobile")
        merid = request.form.get("merid")
        addData = administrator(mobile=mobile, merid=merid)
        session.add(addData)
        #   添加数据后、数据保存到电脑内存上，并没有添加到数据库中，需使用 session.commit() 方法将数据提交到数据库中。
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)
@app.route('/admin/administrator/del', methods=['GET', 'POST'])
def administratorDel():
    return funcDelete("adminid", administrator)

@app.route('/admin/company/get', methods=['GET', 'POST'])
def companyGet():
    return NoPage(company)

@app.route('/admin/company/edit', methods=['GET', 'POST'])
def companyEdit():
    editid = request.form.get("merid")
    mobile = request.form.get("mobile")
    shopname = request.form.get("shopname")
    logo = request.form.get("logo")
    companyName = request.form.get("company")
    address = request.form.get("address")
    industry = request.form.get("industry")
    mail = request.form.get("mail")
    wechat = request.form.get("wechat")
    session.query(company).filter(company.merid == editid ).update({"mobile":mobile,"shopname":shopname,"company":companyName,"logo":logo,"address":address,"industry":industry,"mail":mail,"wechat":wechat})
    session.commit()
    response = {
        'msg': '成功',
        'result': 1,
    }
    return jsonify(response)

@app.route('/admin/order/list', methods=['GET', 'POST'])
def OrderList():
    status = request.form.get("status")
    print("status",status)
    starttime = request.form.get("starttime")
    endtime = request.form.get("endtime")
    realname = request.form.get("realname")
    orderid = request.form.get("orderid")
    pageindex = request.form.get("pageindex")
    PageIndex = int(pageindex)
    pagesize = request.form.get("pagesize")
    PageSize = int(pagesize)
    if status=="-1":
        print("-1全部")
        if realname != '':
            allDataCount = session.query(odrlist).filter(odrlist.realname == realname).all()
            totalcount = session.query(odrlist).filter(odrlist.realname == realname)[
                         (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)
        elif  orderid != '':
            allDataCount = session.query(odrlist).filter(odrlist.orderid == int(orderid)).all()
            totalcount = session.query(odrlist).filter(odrlist.orderid == int(orderid))[
                         (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)
        else:
            if starttime!=None:
                beginArray = time.localtime(int(starttime))
                beginTime = time.strftime("%Y--%m--%d %H:%M:%S", beginArray)
                endArray = time.localtime(int(endtime))
                endTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
                allDataCount = session.query(odrlist).filter(odrlist.createtime.between(beginTime, endTime)).all()
                totalcount = session.query(odrlist).filter(odrlist.createtime.between(beginTime, endTime))[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)
            else:
                return DataList(odrlist)
    elif starttime!=None:
        print('有时间')
        beginArray = time.localtime(int(starttime))
        beginTime = time.strftime("%Y--%m--%d %H:%M:%S", beginArray)
        endArray = time.localtime(int(endtime))
        endTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
        if realname == '' and orderid=='':
            allDataCount = session.query(odrlist).filter(
                and_(odrlist.createtime.between(beginTime, endTime), odrlist.paystatus == int(status))).all()
            totalcount = session.query(odrlist).filter(
                and_(odrlist.createtime.between(beginTime, endTime), odrlist.paystatus == int(status)))[
                         (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)
        elif realname!='':
            allDataCount = session.query(odrlist).filter(and_(odrlist.createtime.between(beginTime, endTime), odrlist.realname == realname)).all()
            totalcount = session.query(odrlist).filter(and_(odrlist.createtime.between(beginTime, endTime),odrlist.realname==realname))[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)
        else:
            allDataCount = session.query(odrlist).filter(odrlist.orderid ==int(orderid)).all()
            totalcount = session.query(odrlist).filter(odrlist.orderid == int(orderid))[
                         (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)
    else:
        print('有状态')
        if starttime!=None:
            beginArray = time.localtime(int(starttime))
            beginTime = time.strftime("%Y--%m--%d %H:%M:%S", beginArray)
            endArray = time.localtime(int(endtime))
            endTime = time.strftime("%Y--%m--%d %H:%M:%S", endArray)
            allDataCount = session.query(odrlist).filter(
                and_(odrlist.createtime.between(beginTime, endTime), odrlist.paystatus == int(status))).all()
            totalcount = session.query(odrlist).filter(
                and_(odrlist.createtime.between(beginTime, endTime), odrlist.paystatus == int(status)))[
                         (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)
        elif  realname!='':
            allDataCount = session.query(odrlist).filter(odrlist.realname == realname).all()
            totalcount = session.query(odrlist).filter(odrlist.realname == realname)[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
            return SelctTerm(allDataCount, totalcount)

        else:
            if  orderid!='':
                allDataCount = session.query(odrlist).filter(odrlist.orderid == int(orderid)).all()
                totalcount = session.query(odrlist).filter(odrlist.orderid == int(orderid))[
                             (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)
            else:
                allDataCount = session.query(odrlist).filter(odrlist.paystatus == int(status)).order_by(
                    odrlist.createtime.desc()).all()
                totalcount = session.query(odrlist).filter(odrlist.paystatus == int(status)).order_by(
                    odrlist.createtime.desc())[(PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
                return SelctTerm(allDataCount, totalcount)



@app.route('/admin/order/get', methods=['GET', 'POST'])
def OrderGet():
    orderid = request.form.get("orderid")
    totalcount = session.query(odrlist).filter(odrlist.orderid == int(orderid)).first().single_to_dict()
    response = {
        'msg': '成功',
        'result': 1,
        'data': totalcount,
    }
    return jsonify(response)

@app.route('/admin/order/addlogisticsnum', methods=['GET', 'POST'])
def addlogisticsnum():
    orderid = request.form.get("orderid")
    logisticsnum= request.form.get("logisticsnum")
    session.query(odrlist).filter(odrlist.orderid == int(orderid)).update({"addressid":logisticsnum,'paystatus':2})
    session.commit()
    response = {
        'msg': '成功',
        'result': 1,
    }
    return jsonify(response)



def funcDataList(totalcount):
    dataList = []
    for r in totalcount:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    return   dataList

# url封装
def get_url_format(domain,protocal='https',port=None,path=None,params=None): #缺省参数放到最后

    url = protocal+'://'+domain

    if port:
        url += ':'+str(port) #port不为空，加上:port
    if path:
        url += '/'+path  #path不为空，加上/path
    if params:
        if not isinstance(params,dict):
            raise Exception('params必须是字典')  #不是字典格式抛出异常

        url += '?'+'&'.join([ str(key)+'='+str(value) for key,value in params.items() ]) #params不为空，加上?key1=value1&key2=value2

    return url


# 小程序接口
@app.route('/api/weixin/login', methods=['GET', 'POST'])
def apiLogin():
    appid = request.form.get("appid")
    secret = request.form.get("secret")
    jscode= request.form.get("jscode")
    nickName = request.form.get("nickName")
    avatarUrl = request.form.get("avatarUrl")
    city = request.form.get("city")
    country = request.form.get("country")
    gender = request.form.get("gender")
    province = request.form.get("province")
    import requests
    url=get_url_format(domain='api.weixin.qq.com', protocal='https',  path='sns/jscode2session',
                   params={'appid': appid, 'secret': secret,"js_code":jscode, "grant_type":"authorization_code"})
    sep = '\n'
    print("url",url)
    requests = requests.get(url)
    print("requests.content",requests.content)
    print("requests.text", requests.text)
    a=requests.text
    print("type a ",type(a))
    info_data = json.loads(requests.text)
    print("info_data",type(info_data))
    print("info_data.openid",info_data["openid"])
    userinfo = session.query(member).filter(member.nickname == nickName).first().single_to_dict()
    if session.query(member).filter(member.nickname == nickName).first() == None:
        addData = member(nickname=nickName,openid= info_data["openid"],avatarurl=avatarUrl, city=city, gender=gender, country=country,province=province)
        session.add(addData)
        session.commit()
        if info_data["openid"]!=None:
            response = {
                'msg': '成功',
                "openid":info_data["openid"],
                "data":userinfo,
                'result': 1,
            }
            return jsonify(response)
        else:
            response = {
                'msg': '微信官方未找到该用户',
                'result': 0,
            }
            return jsonify(response)
    else:
        response = {
            'msg': '已存在该用户',
            "openid": info_data["openid"],
            "data": userinfo,
            'result': 1,
        }
        return jsonify(response)
@app.route('/api/member/wxlogin', methods=['GET', 'POST'])
def returnLogin():
    nickName = request.form.get("nickName")
    avatarUrl = request.form.get("avatarUrl")
    city = request.form.get("city")
    country = request.form.get("country")
    gender = request.form.get("gender")
    province = request.form.get("province")
    if session.query(member).filter(member.nickname == nickName).first()!=None:
        cartDtat=session.query(shoppingcart).join(member, shoppingcart.memid == member.id).filter(member.nickname==nickName).first().single_to_dict()

        response = {
            'msg': '已存在该用户',
            "cartDtat":cartDtat,
            'result': 1,
        }
        return jsonify(response)
    else:
        addData = member(nickname=nickName,avatarurl=avatarUrl,city=city,gender=gender,country=country,province=province)
        session.add(addData)
        session.commit()
        response = {
            'msg': '成功',
            'result': 1,
        }
        return jsonify(response)

    # https: // api.weixin.qq.com / sns / jscode2session?appid = APPID & secret = SECRET & js_code = JSCODE & grant_type = authorization_code

@app.route('/api/shoppingcart/list', methods=['GET', 'POST'])
def shopcart():
    openid = request.form.get("openid")
    print("openid ",openid)
    cartDtat=session.query(shoppingcart).join(member, shoppingcart.memid == member.id).filter(member.openid==openid).all()
    # print("cartDtat.itemid",cartDtat.itemid)
    cartList = ListData(cartDtat)
    for i in cartList:
        print(i["itemid"])
        i["item"]=session.query(item).filter(item.id == i["itemid"]).first().single_to_dict()
    response = {
        'msg': '成功',
        "data": cartList,
        'result': 1,
    }
    return jsonify(response)

@app.route('/api/shoppingcart/add', methods=['GET', 'POST'])
def shopcartAdd():
    openid = request.form.get("openid")
    itemid = request.form.get("itemid")
    sku = request.form.get("sku")
    num= request.form.get("num")
    memid = session.query(member).filter(member.openid == openid).first().id
    print("memid",memid)
    addData = shoppingcart(itemid=itemid, sku=sku, num=num, merid=1014,memid=memid)
    session.add(addData)
    session.commit()
    response = {
        'msg': '成功',
        'result': 1,
    }
    return jsonify(response)



@app.route('/api/item/allitem', methods=['GET', 'POST'])
def allitem():
    seckill = session.query(item).filter(item.itemmodel == 2).order_by(item.createtime).first()
    seckillList=seckill.single_to_dict()
    guess=session.query(item).order_by(item.createtime).first()
    guessList = guess.single_to_dict()
    select = session.query(item).filter(item.price>200).order_by(item.createtime).first()
    selectList = select.single_to_dict()
    itemData = session.query(item).all()
    itemList=ListData(itemData)
    swiperData = session.query(swiper).all()
    swiperList = ListData(swiperData)
    package = session.query(item).filter(item.itemmodel == 4).all()
    dataList = []
    for r in package:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    response = {
        'msg': '成功',
        'result': 1,
        'data':itemList,
        'seckillData': seckillList,
        'guessData': guessList,
        'selectData': selectList,
        "packageList":dataList,
        'swiperList':swiperList,
    }
    return jsonify(response)

@app.route('/api/item/get', methods=['GET', 'POST'])
def itemDetails():
    itemid= request.form.get("itemid")
    openid = request.form.get("openid")
    itemget = session.query(item).filter(item.id == itemid).first()
    getdata = itemget.single_to_dict()
    skuget = session.query(itemsku).filter(itemsku.itemid == itemid).all()
    dataList=ListData(skuget)
    favoriteDtat = session.query(favorite).join(member, favorite.memid == member.id).filter(
        member.openid == openid).all()
    favoriteList = ListData(favoriteDtat)
    pageindex = request.form.get("pageindex")
    pagesize = request.form.get("pagesize")
    PageIndex = int(pageindex)
    PageSize = int(pagesize)
    itemevaluateData = session.query(itemevaluate).filter(itemevaluate.itemid==int(itemid)).order_by(itemevaluate.createtime.desc())[0:(PageIndex* PageSize) + 10]
    itemevaluateList = ListData(itemevaluateData)
    response = {
        'msg': '成功',
        'result': 1,
        'data': getdata,
        'skudata':dataList,
        "favorite":favoriteList,
        "itemevaluate":itemevaluateList
    }
    return jsonify(response)

@app.route('/api/shippingaddress/get', methods=['GET', 'POST'])
def addressget():
    openid = request.form.get("openid")
    isdefault = request.form.get("isdefault")
    cartDtat = session.query(shippingaddress).join(member, shippingaddress.memid == member.id).filter(member.openid == openid,shippingaddress.isdefault==isdefault).first().single_to_dict()
    response = {
        'msg': '成功',
        "data": cartDtat,
        'result': 1,
    }
    return jsonify(response)

@app.route('/api/order/createitems', methods=['GET', 'POST'])
def payOrder():
    addressid= request.form.get("addressid")
    amount = request.form.get("amount")
    paytype= request.form.get("paytype")
    openid = request.form.get("openid")
    realname= request.form.get("realname")
    telephone = request.form.get("telephone")
    province = request.form.get("province")
    city = request.form.get("city")
    district = request.form.get("district")
    address = request.form.get("address")
    shopcarts = request.form.get("shopcarts")
    orderid = str(int(time.time() * 1000)) + str(int(time.clock() * 1000000))
    addData = odrlist(shopcarts=shopcarts,amount=amount,paytype=paytype,addressid=addressid,openid=openid,paystatus='1',orderid=orderid,telephone=telephone,province=province,city=city, realname=realname, district=district,address=address)
    session.add(addData)
    session.commit()
    response = {
        'msg': '成功',
        'result': 1,
    }
    return jsonify(response)

@app.route('/api/order/list', methods=['GET', 'POST'])
def oederList():
    pageindex = request.form.get("pageindex")
    PageIndex = int(pageindex)
    pagesize = request.form.get("pagesize")
    PageSize = int(pagesize)
    openid = request.form.get("openid")
    status = request.form.get("status")
    if status =='':
        allDataCount = session.query(odrlist).filter(odrlist.openid == openid).all()
        totalcount = session.query(odrlist).filter(odrlist.openid == openid)[0:(PageIndex* PageSize) + 10]
        cartList = ListData(allDataCount)
        for i in cartList:
            edititem = eval(i['shopcarts'])
            i["orderDetails"]=edititem

        response = {
            'msg': '成功',
            "data": cartList,
            'result': 1,
        }
        return jsonify(response)

    else:
        allDataCount = session.query(odrlist).filter(and_(odrlist.openid == openid,odrlist.paystatus == status)).all()
        totalcount = session.query(odrlist).filter(and_(odrlist.openid == openid,odrlist.paystatus == status))[0:(PageIndex * PageSize) + 10]
        cartList = ListData(allDataCount)
        for i in cartList:
            edititem = eval(i['shopcarts'])
            i["orderDetails"] = edititem

        response = {
            'msg': '成功',
            "data": cartList,
            'result': 1,
        }
        return jsonify(response)

@app.route('/api/company/aboutus', methods=['GET', 'POST'])
def companyAboutus():
    return NoPage(company)

@app.route('/api/repair/list', methods=['GET', 'POST'])
def apirepairList():
    state = request.form.get("state")
    pageindex = request.form.get("pageindex")
    PageIndex = int(pageindex)
    pagesize = request.form.get("pagesize")
    PageSize = int(pagesize)
    if state == "-1":
        return DataList(repair)
    else:
        allDataCount = session.query(repair).filter(repair.state == state).all()
        totalcount = session.query(repair).filter(repair.state == state)[
                     (PageIndex * PageSize):(PageIndex * PageSize) + PageSize]
        return SelctTerm(allDataCount, totalcount)

@app.route('/api/article/list', methods=['GET', 'POST'])
def apiArticleList():
    pageindex = request.form.get("pageindex")
    PageIndex = int(pageindex)
    pagesize = request.form.get("pagesize")
    PageSize = int(pagesize)
    allDataCount = session.query(article).all()
    totalcount = session.query(article).order_by(article.createtime.desc())[0:(PageIndex * PageSize) + 10]
    dataList = []
    for r in totalcount:
        row2dict = lambda r: {c.name: str(getattr(r, c.name)) for c in r.__table__.columns}
        dataList.append(row2dict(r))
    response = {
        'msg': '成功',
        'result': 1,
        'data': dataList,
        'totalcount': len(allDataCount)
    }
    return jsonify(response)
@app.route('/api/article/get', methods=['GET', 'POST'])
def apiArticleGet():
    return funcGet('artid',article)

# 商品列表页
@app.route('/api/item/itemCategory', methods=['GET', 'POST'])
def itemCategoryList():
    pageindex = request.form.get("pageindex")
    PageIndex = int(pageindex)
    pagesize = request.form.get("pagesize")
    PageSize = int(pagesize)
    cateid = request.form.get("cateid")
    if cateid =="":
        allDataCount = session.query(item).all()
        totalcount = session.query(item).order_by(item.createtime.desc())[0:(PageIndex * PageSize) + 10]
    else:
        allDataCount = session.query(item).filter(item.cateid == cateid).all()
        totalcount = session.query(item).filter(item.cateid == cateid)[0:(PageIndex * PageSize) + 10]

    filterData = session.query(category).all()
    itemList = ListData(totalcount)
    categoryList = ListData(filterData)
    response = {
        'msg': '成功',
        'result': 1,
        'itemList': itemList,
        'categoryList': categoryList,
        'totalcount': len(allDataCount)
    }
    return jsonify(response)



# Base.metadata.create_all(engine)
@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def catch_all(path):
    app.tthreaded=True
    if app.debug:
        return requests.get('http://localhost:8080/{}'.format(path)).text
    return render_template("index.html")
