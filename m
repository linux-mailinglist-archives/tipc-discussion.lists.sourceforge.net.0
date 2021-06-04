Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C133F39C05D
	for <lists+tipc-discussion@lfdr.de>; Fri,  4 Jun 2021 21:20:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lpFN8-0000H6-CK; Fri, 04 Jun 2021 19:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lpFN7-0000Gy-4E
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Jun 2021 19:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v/OSjy7rj5MMtciwVjHGGLHvaE+7LxU3wiDX2YLz6FQ=; b=mL561XOjukgfha37+G8vQ71aSj
 ZL6e20jgXZjyFbROmDZdq4G8IwvCRAFfXvBgIhSOU1/i28dhS5hWbcSE/5e1wAtJeGld2vGgDtcoA
 eniXGvH3pRqPiFSXUxIRdSJjn49fEhqVUrRhlx4O2pk9tvSRTrX4G+Ka9J+cvS5svln0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v/OSjy7rj5MMtciwVjHGGLHvaE+7LxU3wiDX2YLz6FQ=; b=eJoJ1REoaEW4dpAPhGMB3Lmazv
 4Z1mPlw/HcPI9EdIGoBZb8SC9mH0eoFxMLkeCUfCvQSV9Nu9OKDBUGtftUxgPsnHj9hCO13tfMysm
 bx+FN1uclQY2RblPSzbaRtfkA88WZlaF8p2+jRSpi9XE+3mWW1QAh/7F733zHMCSnOIs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lpFMs-0006Tk-N0
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Jun 2021 19:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622834425;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v/OSjy7rj5MMtciwVjHGGLHvaE+7LxU3wiDX2YLz6FQ=;
 b=g2DNCLvErf8xSsSqOKQkWMR4OeH4wyO7NG3wN/qlZ0u3nG306hBvlbVFj3e1Oqwf2l2njm
 L9t6MFiUeRrjTDTeGENWv6JxHSPp0A1OxCrU3uWg/mYwJsuVC9dZZoS91w7X51J0JZmd/l
 5hPBfmEYFfgMi0xdtpXwAtiMD9g1Tps=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-W0i8ojTGM5aTPlyEznHcuA-1; Fri, 04 Jun 2021 15:20:18 -0400
X-MC-Unique: W0i8ojTGM5aTPlyEznHcuA-1
Received: by mail-qk1-f197.google.com with SMTP id
 b19-20020a05620a0893b02902e956b29f5dso7219147qka.16
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 04 Jun 2021 12:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=v/OSjy7rj5MMtciwVjHGGLHvaE+7LxU3wiDX2YLz6FQ=;
 b=OTufOPu5b6IapRc6hlRCqDe4mQCDNvJ+xr3xwdqRcll533z6X1EZLD1NZxzB6tQt+3
 dl6nvQwlbSEzqGZVbQ6kBIfeGtuSqWM1wpawnbNA1pWQqEJ7q2K/4WSrB8BxWo5Ez237
 /iBcjjXuBU7GYE9sVlUTctlGfVsvETVyyz4DYfsgKHxxJFkV05dzRkAFlhfTQptbzpPd
 f5YPUQg9cwMKzxRkFLdI11gdkSUrPGj4pPgi334xuvnjszqKywBF+R5ZpvVMxHlVV7p3
 CF/hY+ZVOWACS3KR8boDEYANW7b6N1+wRDaGTeYVE9jFc/XtuCxLELci4SYcgrSqHNlC
 IyZg==
X-Gm-Message-State: AOAM530kq0bVdEPRag8MKojnW2DFJld6cIQvAVvU0JVin8C414IqNiXg
 mjobFYsOL5puAoMbVS0ealL5dxdJMIaCjNkw0vsBTeRE+gHNiVPZhbUHjvawjw52hgkOyHGAp1c
 iiob+iCBRjq7c2YHovhTpvkF8tjJy6KqdC5pR
X-Received: by 2002:ac8:5748:: with SMTP id 8mr6105583qtx.233.1622834418404;
 Fri, 04 Jun 2021 12:20:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxCiD4kWBi9CrjYC7k8NXIrBh7JN+pXxin/1Hf0f8UO8evbFVj+IiWqIzCKYP8sQKcMklujg==
X-Received: by 2002:ac8:5748:: with SMTP id 8mr6105562qtx.233.1622834418113;
 Fri, 04 Jun 2021 12:20:18 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id x66sm3152989qkc.100.2021.06.04.12.20.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Jun 2021 12:20:17 -0700 (PDT)
To: menglong8.dong@gmail.com
References: <20210604074419.53956-1-dong.menglong@zte.com.cn>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <e997a058-9f6e-86a0-8591-56b0b89441aa@redhat.com>
Date: Fri, 4 Jun 2021 15:20:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210604074419.53956-1-dong.menglong@zte.com.cn>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lpFMs-0006Tk-N0
Subject: Re: [tipc-discussion] [PATCH net-next] net: tipc: fix FB_MTU eat
 two pages
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA2LzQvMjEgMzo0NCBBTSwgbWVuZ2xvbmc4LmRvbmdAZ21haWwuY29tIHdyb3RlOgo+IEZy
b206IE1lbmdsb25nIERvbmcgPGRvbmcubWVuZ2xvbmdAenRlLmNvbS5jbj4KPgo+IEZCX01UVSBp
cyB1c2VkIGluICd0aXBjX21zZ19idWlsZCgpJyB0byBhbGxvYyBzbWFsbGVyIHNrYiB3aGVuIG1l
bW9yeQo+IGFsbG9jYXRpb24gZmFpbHMsIHdoaWNoIGNhbiBhdm9pZCB1bm5lY2Vzc2FyeSBzZW5k
aW5nIGZhaWx1cmVzLgo+Cj4gVGhlIHZhbHVlIG9mIEZCX01UVSBub3cgaXMgMzc0NCwgYW5kIHRo
ZSBkYXRhIHNpemUgd2lsbCBiZToKPgo+ICAgICgzNzQ0ICsgU0tCX0RBVEFfQUxJR04oc2l6ZW9m
KHN0cnVjdCBza2Jfc2hhcmVkX2luZm8pKSArIFwKPiAgICAgIFNLQl9EQVRBX0FMSUdOKEJVRl9I
RUFEUk9PTSArIEJVRl9UQUlMUk9PTSArIDMpKQo+Cj4gd2hpY2ggaXMgbGFyZ2VyIHRoYW4gb25l
IHBhZ2UoNDA5NiksIGFuZCB0d28gcGFnZXMgd2lsbCBiZSBhbGxvY2F0ZWQuCj4KPiBUbyBhdm9p
ZCBpdCwgcmVwbGFjZSAnMzc0NCcgd2l0aCBhIGNhbGN1bGF0aW9uOgo+Cj4gRkJfTVRVID0gKFBB
R0VfU0laRSAtIFNLQl9EQVRBX0FMSUdOKHNpemVvZihzdHJ1Y3Qgc2tiX3NoYXJlZF9pbmZvKSkK
PiAgICAgICAgICAgIC0gU0tCX0RBVEFfQUxJR04oQlVGX0hFQURST09NICsgQlVGX1RBSUxST09N
ICsgMykpCj4KPiBGaXhlczogNGM5NGNjMmQzZDU3ICgidGlwYzogZmFsbCBiYWNrIHRvIHNtYWxs
ZXIgTVRVIGlmIGFsbG9jYXRpb24gb2YgbG9jYWwgc2VuZCBza2IgZmFpbHMiKQo+Cj4gUmVwb3J0
ZWQtYnk6IFplYWwgUm9ib3QgPHplYWxjaUB6dGUuY29tLmNuPgo+IFNpZ25lZC1vZmYtYnk6IE1l
bmdsb25nIERvbmcgPGRvbmcubWVuZ2xvbmdAenRlLmNvbS5jbj4KPiAtLS0KPiAgIG5ldC90aXBj
L2JjYXN0LmMgfCAgMSArCj4gICBuZXQvdGlwYy9tc2cuYyAgIHwgIDggKy0tLS0tLQo+ICAgbmV0
L3RpcGMvbXNnLmggICB8ICAxIC0KPiAgIG5ldC90aXBjL210dS5oICAgfCA1NSArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDQgZmlsZXMgY2hhbmdl
ZCwgNTcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBuZXQvdGlwYy9tdHUuaAo+Cj4gZGlmZiAtLWdpdCBhL25ldC90aXBjL2JjYXN0LmMgYi9uZXQv
dGlwYy9iY2FzdC5jCj4gaW5kZXggZDRiZWNhODk1OTkyLi5jNjQxYjY4ZTA4MTIgMTAwNjQ0Cj4g
LS0tIGEvbmV0L3RpcGMvYmNhc3QuYwo+ICsrKyBiL25ldC90aXBjL2JjYXN0LmMKPiBAQCAtNDEs
NiArNDEsNyBAQAo+ICAgI2luY2x1ZGUgImJjYXN0LmgiCj4gICAjaW5jbHVkZSAibGluay5oIgo+
ICAgI2luY2x1ZGUgIm5hbWVfdGFibGUuaCIKPiArI2luY2x1ZGUgIm10dS5oIgo+ICAgCj4gICAj
ZGVmaW5lIEJDTElOS19XSU5fREVGQVVMVCAgNTAJLyogYmNhc3QgbGluayB3aW5kb3cgc2l6ZSAo
ZGVmYXVsdCkgKi8KPiAgICNkZWZpbmUgQkNMSU5LX1dJTl9NSU4gICAgICAzMgkvKiBiY2FzdCBt
aW5pbXVtIGxpbmsgd2luZG93IHNpemUgKi8KPiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbXNnLmMg
Yi9uZXQvdGlwYy9tc2cuYwo+IGluZGV4IGNlNmFiNTQ4MjJkOC4uZWM3MGQyNzFjMmRhIDEwMDY0
NAo+IC0tLSBhL25ldC90aXBjL21zZy5jCj4gKysrIGIvbmV0L3RpcGMvbXNnLmMKPiBAQCAtNDAs
MTUgKzQwLDkgQEAKPiAgICNpbmNsdWRlICJhZGRyLmgiCj4gICAjaW5jbHVkZSAibmFtZV90YWJs
ZS5oIgo+ICAgI2luY2x1ZGUgImNyeXB0by5oIgo+ICsjaW5jbHVkZSAibXR1LmgiCj4gICAKPiAg
ICNkZWZpbmUgTUFYX0ZPUldBUkRfU0laRSAxMDI0Cj4gLSNpZmRlZiBDT05GSUdfVElQQ19DUllQ
VE8KPiAtI2RlZmluZSBCVUZfSEVBRFJPT00gQUxJR04oKChMTF9NQVhfSEVBREVSICsgNDgpICsg
RUhEUl9NQVhfU0laRSksIDE2KQo+IC0jZGVmaW5lIEJVRl9UQUlMUk9PTSAoVElQQ19BRVNfR0NN
X1RBR19TSVpFKQo+IC0jZWxzZQo+IC0jZGVmaW5lIEJVRl9IRUFEUk9PTSAoTExfTUFYX0hFQURF
UiArIDQ4KQo+IC0jZGVmaW5lIEJVRl9UQUlMUk9PTSAxNgo+IC0jZW5kaWYKPiAgIAo+ICAgc3Rh
dGljIHVuc2lnbmVkIGludCBhbGlnbih1bnNpZ25lZCBpbnQgaSkKPiAgIHsKPiBkaWZmIC0tZ2l0
IGEvbmV0L3RpcGMvbXNnLmggYi9uZXQvdGlwYy9tc2cuaAo+IGluZGV4IDVkNjQ1OTZiYTk4Ny4u
ZTgzNjg5ZDBmMGY2IDEwMDY0NAo+IC0tLSBhL25ldC90aXBjL21zZy5oCj4gKysrIGIvbmV0L3Rp
cGMvbXNnLmgKPiBAQCAtOTksNyArOTksNiBAQCBzdHJ1Y3QgcGxpc3Q7Cj4gICAjZGVmaW5lIE1B
WF9IX1NJWkUgICAgICAgICAgICAgICAgNjAJLyogTGFyZ2VzdCBwb3NzaWJsZSBUSVBDIGhlYWRl
ciBzaXplICovCj4gICAKPiAgICNkZWZpbmUgTUFYX01TR19TSVpFIChNQVhfSF9TSVpFICsgVElQ
Q19NQVhfVVNFUl9NU0dfU0laRSkKPiAtI2RlZmluZSBGQl9NVFUgICAgICAgICAgICAgICAgICAz
NzQ0Cj4gICAjZGVmaW5lIFRJUENfTUVESUFfSU5GT19PRkZTRVQJNQo+ICAgCj4gICBzdHJ1Y3Qg
dGlwY19za2JfY2Igewo+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9tdHUuaCBiL25ldC90aXBjL210
dS5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjAzM2YwYjE3
OGY5ZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9uZXQvdGlwYy9tdHUuaApQbGVhc2UgZG9uJ3Qg
YWRkIGFueSBleHRyYSBmaWxlIGp1c3QgZm9yIHRoaXMgbGl0dGxlIGZpeC4gV2UgaGF2ZSBlbm91
Z2ggCmZpbGVzLgpLZWVwIHRoZSBtYWNyb3MgaW4gbXNnLmgvYyB3aGVyZSB0aGV5IHVzZWQgdG8g
YmUuwqAgWW91IGNhbiBzdGlsbCBhZGQgCnlvdXIgY29weXJpZ2h0IGxpbmUgdG8gdGhvc2UgZmls
ZXMuClJlZ2FyZGluZyB0aGUgbWFjcm9zIGtlcHQgaW5zaWRlIG1zZy5jLCB0aGV5IGFyZSB0aGVy
ZSBiZWNhdXNlIHdlIGRlc2lnbiAKYnkgdGhlIHByaW5jaXBsZSBvZiBtaW5pbWFsIGV4cG9zdXJl
LCBldmVuIGFtb25nIG91ciBtb2R1bGUgaW50ZXJuYWwgZmlsZXMuCk90aGVyd2lzZSBpdCBpcyBv
ay4KClRoYW5rcwovLy9qb24KCj4gQEAgLTAsMCArMSw1NSBAQAo+ICsvKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCj4gKy8qCj4gKyAqIENvcHlyaWdodCAyMDIxIFpU
RSBDb3Jwb3JhdGlvbi4KPiArICogQWxsIHJpZ2h0cyByZXNlcnZlZC4KPiArICoKPiArICogUmVk
aXN0cmlidXRpb24gYW5kIHVzZSBpbiBzb3VyY2UgYW5kIGJpbmFyeSBmb3Jtcywgd2l0aCBvciB3
aXRob3V0Cj4gKyAqIG1vZGlmaWNhdGlvbiwgYXJlIHBlcm1pdHRlZCBwcm92aWRlZCB0aGF0IHRo
ZSBmb2xsb3dpbmcgY29uZGl0aW9ucyBhcmUgbWV0Ogo+ICsgKgo+ICsgKiAxLiBSZWRpc3RyaWJ1
dGlvbnMgb2Ygc291cmNlIGNvZGUgbXVzdCByZXRhaW4gdGhlIGFib3ZlIGNvcHlyaWdodAo+ICsg
KiAgICBub3RpY2UsIHRoaXMgbGlzdCBvZiBjb25kaXRpb25zIGFuZCB0aGUgZm9sbG93aW5nIGRp
c2NsYWltZXIuCj4gKyAqIDIuIFJlZGlzdHJpYnV0aW9ucyBpbiBiaW5hcnkgZm9ybSBtdXN0IHJl
cHJvZHVjZSB0aGUgYWJvdmUgY29weXJpZ2h0Cj4gKyAqICAgIG5vdGljZSwgdGhpcyBsaXN0IG9m
IGNvbmRpdGlvbnMgYW5kIHRoZSBmb2xsb3dpbmcgZGlzY2xhaW1lciBpbiB0aGUKPiArICogICAg
ZG9jdW1lbnRhdGlvbiBhbmQvb3Igb3RoZXIgbWF0ZXJpYWxzIHByb3ZpZGVkIHdpdGggdGhlIGRp
c3RyaWJ1dGlvbi4KPiArICogMy4gTmVpdGhlciB0aGUgbmFtZXMgb2YgdGhlIGNvcHlyaWdodCBo
b2xkZXJzIG5vciB0aGUgbmFtZXMgb2YgaXRzCj4gKyAqICAgIGNvbnRyaWJ1dG9ycyBtYXkgYmUg
dXNlZCB0byBlbmRvcnNlIG9yIHByb21vdGUgcHJvZHVjdHMgZGVyaXZlZCBmcm9tCj4gKyAqICAg
IHRoaXMgc29mdHdhcmUgd2l0aG91dCBzcGVjaWZpYyBwcmlvciB3cml0dGVuIHBlcm1pc3Npb24u
Cj4gKyAqCj4gKyAqIEFsdGVybmF0aXZlbHksIHRoaXMgc29mdHdhcmUgbWF5IGJlIGRpc3RyaWJ1
dGVkIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUKPiArICogR05VIEdlbmVyYWwgUHVibGljIExpY2Vu
c2UgKCJHUEwiKSB2ZXJzaW9uIDIgYXMgcHVibGlzaGVkIGJ5IHRoZSBGcmVlCj4gKyAqIFNvZnR3
YXJlIEZvdW5kYXRpb24uCj4gKyAqCj4gKyAqIFRISVMgU09GVFdBUkUgSVMgUFJPVklERUQgQlkg
VEhFIENPUFlSSUdIVCBIT0xERVJTIEFORCBDT05UUklCVVRPUlMgIkFTIElTIgo+ICsgKiBBTkQg
QU5ZIEVYUFJFU1MgT1IgSU1QTElFRCBXQVJSQU5USUVTLCBJTkNMVURJTkcsIEJVVCBOT1QgTElN
SVRFRCBUTywgVEhFCj4gKyAqIElNUExJRUQgV0FSUkFOVElFUyBPRiBNRVJDSEFOVEFCSUxJVFkg
QU5EIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFCj4gKyAqIEFSRSBESVNDTEFJTUVE
LiBJTiBOTyBFVkVOVCBTSEFMTCBUSEUgQ09QWVJJR0hUIE9XTkVSIE9SIENPTlRSSUJVVE9SUyBC
RQo+ICsgKiBMSUFCTEUgRk9SIEFOWSBESVJFQ1QsIElORElSRUNULCBJTkNJREVOVEFMLCBTUEVD
SUFMLCBFWEVNUExBUlksIE9SCj4gKyAqIENPTlNFUVVFTlRJQUwgREFNQUdFUyAoSU5DTFVESU5H
LCBCVVQgTk9UIExJTUlURUQgVE8sIFBST0NVUkVNRU5UIE9GCj4gKyAqIFNVQlNUSVRVVEUgR09P
RFMgT1IgU0VSVklDRVM7IExPU1MgT0YgVVNFLCBEQVRBLCBPUiBQUk9GSVRTOyBPUiBCVVNJTkVT
Uwo+ICsgKiBJTlRFUlJVUFRJT04pIEhPV0VWRVIgQ0FVU0VEIEFORCBPTiBBTlkgVEhFT1JZIE9G
IExJQUJJTElUWSwgV0hFVEhFUiBJTgo+ICsgKiBDT05UUkFDVCwgU1RSSUNUIExJQUJJTElUWSwg
T1IgVE9SVCAoSU5DTFVESU5HIE5FR0xJR0VOQ0UgT1IgT1RIRVJXSVNFKQo+ICsgKiBBUklTSU5H
IElOIEFOWSBXQVkgT1VUIE9GIFRIRSBVU0UgT0YgVEhJUyBTT0ZUV0FSRSwgRVZFTiBJRiBBRFZJ
U0VEIE9GIFRIRQo+ICsgKiBQT1NTSUJJTElUWSBPRiBTVUNIIERBTUFHRS4KPiArICovCj4gKwo+
ICsjaWZuZGVmIF9USVBDX01UVV9ICj4gKyNkZWZpbmUgX1RJUENfTVRVX0gKPiArCj4gKyNpbmNs
dWRlIDxsaW51eC90aXBjLmg+Cj4gKyNpbmNsdWRlICJjcnlwdG8uaCIKPiArCj4gKyNpZmRlZiBD
T05GSUdfVElQQ19DUllQVE8KPiArI2RlZmluZSBCVUZfSEVBRFJPT00gQUxJR04oKChMTF9NQVhf
SEVBREVSICsgNDgpICsgRUhEUl9NQVhfU0laRSksIDE2KQo+ICsjZGVmaW5lIEJVRl9UQUlMUk9P
TSAoVElQQ19BRVNfR0NNX1RBR19TSVpFKQo+ICsjZGVmaW5lIEZCX01UVQkoUEFHRV9TSVpFIC0g
XAo+ICsJCSBTS0JfREFUQV9BTElHTihzaXplb2Yoc3RydWN0IHNrYl9zaGFyZWRfaW5mbykpIC0g
XAo+ICsJCSBTS0JfREFUQV9BTElHTihCVUZfSEVBRFJPT00gKyBCVUZfVEFJTFJPT00gKyAzKSkK
PiArI2Vsc2UKPiArI2RlZmluZSBCVUZfSEVBRFJPT00gKExMX01BWF9IRUFERVIgKyA0OCkKPiAr
I2RlZmluZSBCVUZfVEFJTFJPT00gMTYKPiArI2RlZmluZSBGQl9NVFUJKFBBR0VfU0laRSAtIFwK
PiArCQkgU0tCX0RBVEFfQUxJR04oc2l6ZW9mKHN0cnVjdCBza2Jfc2hhcmVkX2luZm8pKSAtIFwK
PiArCQkgU0tCX0RBVEFfQUxJR04oQlVGX0hFQURST09NICsgMykpCj4gKyNlbmRpZgo+ICsKPiAr
I2VuZGlmCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90
aXBjLWRpc2N1c3Npb24K
