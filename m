Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAB323D81B
	for <lists+tipc-discussion@lfdr.de>; Thu,  6 Aug 2020 10:43:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k3bV0-0006Mi-MX; Thu, 06 Aug 2020 08:43:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k3bUy-0006MG-RI
 for tipc-discussion@lists.sourceforge.net; Thu, 06 Aug 2020 08:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=urzeHCcm6K9XhQ4DTjdXcMx1gCVB7hAPwo7rpbCj1hk=; b=DBACjiFhZEse2900rr/oOeG5e/
 UJOR5S5e3Xrzjj1HtPHgboGyb5SDSkye14SSqKIdYUoI0/IFQHl5JQcDrBar+y9qJU7LPN1JHc6Wu
 g4iF+n7ApfzpdFSvhQT/tR36RTUjW8/AGdj3aWQnDlscrzpduMqxWcSfmgDc5ZZZhgj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=urzeHCcm6K9XhQ4DTjdXcMx1gCVB7hAPwo7rpbCj1hk=; b=NQnHENvIqDQYeWZqhz47CSozUU
 r3wqy1Ito9km8lPlyfYKZddrxDymIOoFsx3bcP+EeUYMMhGqoM/NLRWuAViXVC1qyBe7BsSBYNTma
 E41GKFYdeuUZV3ep8PqdmYIpAiaUiiGkP0+5+cwVBTn/7jh5YMMHF2d5CXa7w/4u7t+k=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k3bUv-00H5OQ-01
 for tipc-discussion@lists.sourceforge.net; Thu, 06 Aug 2020 08:43:40 +0000
Received: by mail-wr1-f67.google.com with SMTP id f12so7339092wru.13
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 06 Aug 2020 01:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=urzeHCcm6K9XhQ4DTjdXcMx1gCVB7hAPwo7rpbCj1hk=;
 b=opxlIC9v+wiIQhTSQcaMlTQDE58v57GGFz5A9bGSDE2PHbr09FH8+H62WZnlT0VDx4
 E5fbsLO472fTJ7Es/Br8A1yyfwmn6OD+69yPkwZtQGbtYEOurK1B+rk5nfqsNZm3lFsU
 vI+/PUEK2idY7rmFk5yB0TCV/3LjYMamJknRk4A6RLGbLnjjMKF96TJYgYzvcp+OnK9g
 Q0jYmTzSiUUyWfTTd5FshgaA89QSggb3Dhehe1FOYZeczmnEdlncWzUnubHMFdkx7Fg0
 /QqJRei+Q1ymQ/iXGcQUskLtrboDtA16ar+0Z/nVI8l5ludqLLfCYbNMUP1ODzltjb5l
 K47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=urzeHCcm6K9XhQ4DTjdXcMx1gCVB7hAPwo7rpbCj1hk=;
 b=pfjIDF4v8GSckb+odR9so+bgXgxcRTHWTKCoOh4P9zdYVQmVA0ORR4+Kn8+lHFV/Q5
 AfD7sESSUo+UIduP6K3Q+DXLaKk45mJ+BJKiMPw4qoRW0B82dmaM1qj6UYRNXLouZdrM
 oqkH3D9Fea0yrCbDwNxCcvNuk45ImKsPIFBtvsfDUh0xyWjBkjP0SKJGKsaIIOxej92M
 +0YfAdG0O9Px0KSEj6Aqam/kzi0cIQfpehrOfvkhHzJluhiN+EpQWou+bibHorwVEUiq
 NFG435vqG5xsEup0CX+kNTmTHZVbU13P8nXRc8JR/WaGSv7fRpAZkDJJ8tbY/CZJzLdi
 KP/w==
X-Gm-Message-State: AOAM533Hv968TcfDu1RYY2ISCvyQWb3W5P2rLtNLF9i4P2RG9LKOderA
 uAcuYwNC3ULfa+dvbncjK8nC9XDEauWNoGdQKds=
X-Google-Smtp-Source: ABdhPJy+7NNjOh33qMpG+sJTalrTxVeTAX8ySPJHWaNIj1LwpcaBtrJAHB02ZesjX107wd6HK3Sck0DHwv6a40Ulzao=
X-Received: by 2002:adf:df89:: with SMTP id z9mr6373067wrl.395.1596703410648; 
 Thu, 06 Aug 2020 01:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
 <CAPA1RqCz=h-RBu-md1rJ5WLWsr9LLqO8bK9D=q6_vzYMz7564A@mail.gmail.com>
In-Reply-To: <CAPA1RqCz=h-RBu-md1rJ5WLWsr9LLqO8bK9D=q6_vzYMz7564A@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Thu, 6 Aug 2020 16:55:15 +0800
Message-ID: <CADvbK_dSnrBkw_hJV8LVCEs9D-WB+h2QC3JghLCxVwV5PW9YYA@mail.gmail.com>
To: Hideaki Yoshifuji <hideaki.yoshifuji@miraclelinux.com>,
 David Ahern <dsahern@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: miraclelinux.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k3bUv-00H5OQ-01
Subject: Re: [tipc-discussion] [PATCH net 1/2] ipv6: add ipv6_dev_find()
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
Cc: Jon Maloy <jon.maloy@ericsson.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, davem <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBBdWcgNiwgMjAyMCBhdCAxMDo1MCBBTSBIaWRlYWtpIFlvc2hpZnVqaQo8aGlkZWFr
aS55b3NoaWZ1amlAbWlyYWNsZWxpbnV4LmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IDIwMjDlubQ4
5pyINOaXpSjngaspIDA6MzUgWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPjoKPiA+Cj4g
PiBUaGlzIGlzIHRvIGFkZCBhbiBpcF9kZXZfZmluZCBsaWtlIGZ1bmN0aW9uIGZvciBpcHY2LCB1
c2VkIHRvIGZpbmQKPiA+IHRoZSBkZXYgYnkgc2FkZHIuCj4gPgo+ID4gSXQgd2lsbCBiZSB1c2Vk
IGJ5IFRJUEMgcHJvdG9jb2wuIFNvIGFsc28gZXhwb3J0IGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFhpbiBMb25nIDxsdWNpZW4ueGluQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGluY2x1ZGUv
bmV0L2FkZHJjb25mLmggfCAgMiArKwo+ID4gIG5ldC9pcHY2L2FkZHJjb25mLmMgICAgfCAzOSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5n
ZWQsIDQxIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvYWRk
cmNvbmYuaCBiL2luY2x1ZGUvbmV0L2FkZHJjb25mLmgKPiA+IGluZGV4IDg0MThiN2QuLmJhM2Y2
YzE1IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9uZXQvYWRkcmNvbmYuaAo+ID4gKysrIGIvaW5j
bHVkZS9uZXQvYWRkcmNvbmYuaAo+ID4gQEAgLTk3LDYgKzk3LDggQEAgYm9vbCBpcHY2X2Noa19j
dXN0b21fcHJlZml4KGNvbnN0IHN0cnVjdCBpbjZfYWRkciAqYWRkciwKPiA+Cj4gPiAgaW50IGlw
djZfY2hrX3ByZWZpeChjb25zdCBzdHJ1Y3QgaW42X2FkZHIgKmFkZHIsIHN0cnVjdCBuZXRfZGV2
aWNlICpkZXYpOwo+ID4KPiA+ICtzdHJ1Y3QgbmV0X2RldmljZSAqaXB2Nl9kZXZfZmluZChzdHJ1
Y3QgbmV0ICpuZXQsIGNvbnN0IHN0cnVjdCBpbjZfYWRkciAqYWRkcik7Cj4gPiArCj4KPiBIb3cg
ZG8gd2UgaGFuZGxlIGxpbmstbG9jYWwgYWRkcmVzc2VzPwpUaGlzIGlzIHdoYXQgImlmICghcmVz
dWx0KSIgYnJhbmNoIG1lYW50IHRvIGRvOgoKKyAgICAgICBpZiAoIXJlc3VsdCkgeworICAgICAg
ICAgICAgICAgc3RydWN0IHJ0Nl9pbmZvICpydDsKKworICAgICAgICAgICAgICAgcnQgPSBydDZf
bG9va3VwKG5ldCwgYWRkciwgTlVMTCwgMCwgTlVMTCwgMCk7CisgICAgICAgICAgICAgICBpZiAo
cnQpIHsKKyAgICAgICAgICAgICAgICAgICAgICAgZGV2ID0gcnQtPmRzdC5kZXY7CisgICAgICAg
ICAgICAgICAgICAgICAgIGlwNl9ydF9wdXQocnQpOworICAgICAgICAgICAgICAgfQorICAgICAg
IH0gZWxzZSB7CisgICAgICAgICAgICAgICBkZXYgPSByZXN1bHQtPmlkZXYtPmRldjsKKyAgICAg
ICB9CgpUaGFua3MuCgo+Cj4gLS15b3NoZnVqaQo+Cj4gPiAgc3RydWN0IGluZXQ2X2lmYWRkciAq
aXB2Nl9nZXRfaWZhZGRyKHN0cnVjdCBuZXQgKm5ldCwKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW42X2FkZHIgKmFkZHIsCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgaW50
IHN0cmljdCk7Cj4gPiBkaWZmIC0tZ2l0IGEvbmV0L2lwdjYvYWRkcmNvbmYuYyBiL25ldC9pcHY2
L2FkZHJjb25mLmMKPiA+IGluZGV4IDg0MGJmZGIuLjg1N2Q2ZjkgMTAwNjQ0Cj4gPiAtLS0gYS9u
ZXQvaXB2Ni9hZGRyY29uZi5jCj4gPiArKysgYi9uZXQvaXB2Ni9hZGRyY29uZi5jCj4gPiBAQCAt
MTk4Myw2ICsxOTgzLDQ1IEBAIGludCBpcHY2X2Noa19wcmVmaXgoY29uc3Qgc3RydWN0IGluNl9h
ZGRyICphZGRyLCBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KQo+ID4gIH0KPiA+ICBFWFBPUlRfU1lN
Qk9MKGlwdjZfY2hrX3ByZWZpeCk7Cj4gPgo+ID4gKy8qKgo+ID4gKyAqIGlwdjZfZGV2X2ZpbmQg
LSBmaW5kIHRoZSBmaXJzdCBkZXZpY2Ugd2l0aCBhIGdpdmVuIHNvdXJjZSBhZGRyZXNzLgo+ID4g
KyAqIEBuZXQ6IHRoZSBuZXQgbmFtZXNwYWNlCj4gPiArICogQGFkZHI6IHRoZSBzb3VyY2UgYWRk
cmVzcwo+ID4gKyAqCj4gPiArICogVGhlIGNhbGxlciBzaG91bGQgYmUgcHJvdGVjdGVkIGJ5IFJD
VSwgb3IgUlROTC4KPiA+ICsgKi8KPiA+ICtzdHJ1Y3QgbmV0X2RldmljZSAqaXB2Nl9kZXZfZmlu
ZChzdHJ1Y3QgbmV0ICpuZXQsIGNvbnN0IHN0cnVjdCBpbjZfYWRkciAqYWRkcikKPiA+ICt7Cj4g
PiArICAgICAgIHVuc2lnbmVkIGludCBoYXNoID0gaW5ldDZfYWRkcl9oYXNoKG5ldCwgYWRkcik7
Cj4gPiArICAgICAgIHN0cnVjdCBpbmV0Nl9pZmFkZHIgKmlmcCwgKnJlc3VsdCA9IE5VTEw7Cj4g
PiArICAgICAgIHN0cnVjdCBuZXRfZGV2aWNlICpkZXYgPSBOVUxMOwo+ID4gKwo+ID4gKyAgICAg
ICByY3VfcmVhZF9sb2NrKCk7Cj4gPiArICAgICAgIGhsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdShp
ZnAsICZpbmV0Nl9hZGRyX2xzdFtoYXNoXSwgYWRkcl9sc3QpIHsKPiA+ICsgICAgICAgICAgICAg
ICBpZiAobmV0X2VxKGRldl9uZXQoaWZwLT5pZGV2LT5kZXYpLCBuZXQpICYmCj4gPiArICAgICAg
ICAgICAgICAgICAgIGlwdjZfYWRkcl9lcXVhbCgmaWZwLT5hZGRyLCBhZGRyKSkgewo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgcmVzdWx0ID0gaWZwOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gPiArICAgICAgICAgICAgICAgfQo+ID4gKyAgICAgICB9Cj4gPiArCj4g
PiArICAgICAgIGlmICghcmVzdWx0KSB7Cj4gPiArICAgICAgICAgICAgICAgc3RydWN0IHJ0Nl9p
bmZvICpydDsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBydCA9IHJ0Nl9sb29rdXAobmV0LCBh
ZGRyLCBOVUxMLCAwLCBOVUxMLCAwKTsKPiA+ICsgICAgICAgICAgICAgICBpZiAocnQpIHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIGRldiA9IHJ0LT5kc3QuZGV2Owo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaXA2X3J0X3B1dChydCk7Cj4gPiArICAgICAgICAgICAgICAgfQo+ID4g
KyAgICAgICB9IGVsc2Ugewo+ID4gKyAgICAgICAgICAgICAgIGRldiA9IHJlc3VsdC0+aWRldi0+
ZGV2Owo+ID4gKyAgICAgICB9Cj4gPiArICAgICAgIHJjdV9yZWFkX3VubG9jaygpOwo+ID4gKwo+
ID4gKyAgICAgICByZXR1cm4gZGV2Owo+ID4gK30KPiA+ICtFWFBPUlRfU1lNQk9MKGlwdjZfZGV2
X2ZpbmQpOwo+ID4gKwo+ID4gIHN0cnVjdCBpbmV0Nl9pZmFkZHIgKmlwdjZfZ2V0X2lmYWRkcihz
dHJ1Y3QgbmV0ICpuZXQsIGNvbnN0IHN0cnVjdCBpbjZfYWRkciAqYWRkciwKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBpbnQg
c3RyaWN0KQo+ID4gIHsKPiA+IC0tCj4gPiAyLjEuMAo+ID4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0
CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
