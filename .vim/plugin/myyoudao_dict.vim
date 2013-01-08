if !has('python')
    echo "Error: Required vim python"
    finish
endif

function! YouDao(arg1)
python <<_EOF_
#! -*- coding:utf-8 -*-
import vim
import os
import urllib
import json
KEYFROM = 'LongChang-blog'
KEY = '1548662058'
URL = "http://fanyi.youdao.com/openapi.do?keyfrom=%s&key=%s&type=data&doctype=json&version=1.1&q=" % (KEYFROM, KEY)

def youdao(word):
    url = URL + word
    try:
        u = urllib.urlopen(url)
        con = u.read()
    except Exception, e:
        print e
        u.close()
        return None
    u.close()
    try:
        back = json.loads(con)
        return back
    except:
        return None

def parse(js):
    if js is None:
        print "查询出错"
        return None
    if js['errorCode'] == 20:
        print "输入的文本过长"
        return None
    if js['errorCode'] == 30:
        print "无法进行有效的翻译"
        return None
    if js['errorCode'] == 40:
        print "不支持的语言类型"
        return None
    if js['errorCode'] == 50:
        print "无效的key"
        return None
    vim.command("topleft new")
    vim.command("setlocal buftype=nofile")
    vim.current.buffer[0] = ("原文：%s" %  js['query'].encode('utf-8'))
    vim.current.buffer.append("有道翻译：")
    i = 1
    for c in js['translation']: # 有道翻译
        print i, c, type(i), type(c)
        #vim.current.buffer.append("%d. %s" % (i, str(c)))
        vim.current.buffer.append("%d. %s" % (i, c.encode('utf-8')))
        i += 1
    if "basic" in js:           # 有道词典-基本词典
        vim.current.buffer.append("有道词典：")
        i = 1
        for c in js['basic']['explains']:
            #vim.current.buffer.append("%d. %s" % (i, str(c)))
            vim.current.buffer.append("%d. %s" % (i, c.encode('utf-8')))
            i += 1
    if "web" in js:             # 有道词典-网络释义
        vim.current.buffer.append("网络释义：")
        n = 1
        for explains in js['web']:
            #vim.current.buffer.append("原文%d：%s" % (n, str(explains['key'])))
            vim.current.buffer.append("原文%d：%s" % (n, explains['key'].encode('utf-8')))
            n += 1
            i = 1
            for c in explains['value']:
                #vim.current.buffer.append("%d. %s" % (i, str(c)))
                vim.current.buffer.append("%d. %s" % (i, c.encode('utf-8')))
                i += 1
    vim.command("setlocal buftype=nofile readonly nomodifiable")
    vim.command("setlocal bufhidden=hide")
parse(youdao(vim.eval("a:arg1")))

_EOF_
endfunction

function! YouDaoClip()
if @"==''
    echo "剪切板为空"
else
    call YouDao(@")
endif
endfunction
command! -nargs=1 YouDao call YouDao <args>
command! -nargs=0 YouDaoClip call YouDaoClip()
