Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1B287BB0
	for <lists+tipc-discussion@lfdr.de>; Thu,  8 Oct 2020 20:28:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQadn-0006uJ-6O; Thu, 08 Oct 2020 18:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kQadm-0006uC-GV
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 18:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ldsG3BA8Oz7tCpUzKcUyZ/roknIgMeDllyvO+2id9WE=; b=hkU/xC/9GHCbw26wgjvjTMwhXm
 otVXritdY89vrYR5USSXBNQlURu5XPie7KGJbmkqgRn5i/EcFg3IUiBRXc71/mXxS0qAR4kgp+2WM
 srze65VC6SZGKauXbaoNxWSKVkNynOY9/yVGupRjiAd1wwm9ZsxQGuZzuVAnpxKP3BcE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ldsG3BA8Oz7tCpUzKcUyZ/roknIgMeDllyvO+2id9WE=; b=AOOaJEXGWIXz88kL1qsPU/SK28
 J1pNbri90fICoFhiEBDMy8Ns8KjsUF9oLVnnSuDwsDpvQhnpNc4QQtMSNgtGSVpnFVeKkeF/PcJ4a
 7Ecab3FXQ0MbjIeB7cQL+ICUKTrbEgpxiMMyk4Op7cJCBUb+P/1rHGx5QR4NmZvA6Ghw=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kQadd-003Mad-Nt
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 18:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602181651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ldsG3BA8Oz7tCpUzKcUyZ/roknIgMeDllyvO+2id9WE=;
 b=IJQbV1TmZff2NqWjA6WWdXpH5WP+VQdmC4kT5xJfsSNAJA0zmjbQbFbyK43PUDikNBtYtX
 hvvT7Cb2WhR0VaddbirX+QgDp5SFE51PYQbiIUICJIecKg3lbeVlsymcWtF7rgEOpmPNWG
 SKNuqp1tpOaqBUIL3QVIt5fECSwl3J4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-5-Ks-yXsMuSuWk50SqkRNg-1; Thu, 08 Oct 2020 14:27:27 -0400
X-MC-Unique: 5-Ks-yXsMuSuWk50SqkRNg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7000E108E1A0;
 Thu,  8 Oct 2020 18:27:26 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C072A100239A;
 Thu,  8 Oct 2020 18:27:25 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20201008022219.8212-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d34511c4-b6b0-3853-bc20-bab460eefc46@redhat.com>
Date: Thu, 8 Oct 2020 14:27:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201008022219.8212-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQadd-003Mad-Nt
Subject: Re: [tipc-discussion] [net-next] tipc: introduce smooth change to
 replicast
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiAxMC83LzIwIDEwOjIyIFBNLCBIb2FuZyBIdXUgTGUgd3JvdGU6Cj4gSW4gY29tbWl0IGNh
ZDI5MjlkYzQzMiAoInRpcGM6IHVwZGF0ZSBhIGJpbmRpbmcgc2VydmljZSB2aWEgYnJvYWRjYXN0
IiksCj4gV2UgdXNlIGJyb2FkY2FzdCB0byB1cGRhdGUgYSBiaW5kaW5nIHNlcnZpY2UgZm9yIGEg
bGFyZ2UgY2x1c3Rlci4KPiBIb3dldmVyLCBpZiB3ZSB0cnkgdG8gcHVibGlzaCBhIHRob3VzYW5k
cyBvZiBzZXJ2aWNlcyBhdCB0aGUKPiBzYW1lIHRpbWUsIHdlIG1heSB0byBnZXQgImxpbmsgb3Zl
cmZsb3ciIGhhcHBlbiBiZWNhdXNlIG9mIHF1ZXVlIGxpbWl0Cj4gaGFkIHJlYWNoZWQuCj4KPiBX
ZSBub3cgaW50cm9kdWNlIGEgc21vb3RoIGNoYW5nZSB0byByZXBsaWNhc3QgaWYgdGhlIGJyb2Fk
Y2FzdCBsaW5rIGhhcwo+IHJlYWNoIHRvIHRoZSBsaW1pdCBvZiBxdWV1ZS4KVG8gbWUgdGhpcyBi
ZWF0cyB0aGUgd2hvbGUgcHVycG9zZSBvZiB1c2luZyBicm9hZGNhc3QgZGlzdHJpYnV0aW9uIGlu
IAp0aGUgZmlyc3QgcGxhY2UuCldlIHdhbnRlZCB0byBzYXZlIENQVSBhbmQgbmV0d29yayByZXNv
dXJjZXMgYnkgdXNpbmfCoCBicm9hZGNhc3QsIGFuZCAKdGhlbiwgd2hlbiB0aGluZ3MgZ2V0IHRv
dWdoLCB3ZSBmYWxsIGJhY2sgdG8gdGhlIHN1cHBvc2VkbHkgbGVzcyAKZWZmaWNpZW50IHJlcGxp
Y2FzdCBtZXRob2QuIE5vdCBnb29kLgoKSSB3b25kZXIgd2hhdCBpcyByZWFsbHkgaGFwcGVuaW5n
IHdoZW4gdGhpcyBvdmVyZmxvdyBzaXR1YXRpb24gb2NjdXJzLgpGaXJzdCwgdGhlIHJlc2V0IGxp
bWl0IGlzIGRpbWVuc2lvbmVkIHNvIHRoYXQgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIApwdWJs
aXNoIE1BWF9QVUJMSUNBVElPTlMgKDY1aykgcHVibGljYXRpb25zIGluIG9uZSBzaG90LgpXaXRo
IGZ1bGwgYnVuZGxpbmcsIHdoaWNoIGlzIHdoYXQgSSBleHBlY3QgaGVyZSwgdGhlcmUgYXJlIDE0
NjAvMjAgPSA3MyAKcHVibGljYXRpb24gaXRlbXMgaW4gZWFjaCBidWZmZXIsIHNvIHRoZSByZXNl
dCBsaW1pdCAoPT1tYXhfYnVsaykgc2hvdWxkIApiZSA2NWsvNzMgPSA4OTcgYnVmZmVycy4KTXkg
ZmlndXJlcyBhcmUganVzdCBmcm9tIHRoZSB0b3Agb2YgbXkgaGVhZCwgc28geW91IHNob3VsZCBk
b3VibGUgY2hlY2sgCnRoZW0sIGJ1dCBJIGZpbmQgaXQgdW5saWtlbHkgdGhhdCB3ZSBoaXQgdGhp
cyBsaW1pdCB1bmxlc3MgdGhlcmUgaXMgYSAKbG90IG9mIG90aGVyIGJyb2FkY2FzdCBnb2luZyBv
biBhdCB0aGUgc2FtZSB0aW1lLCBhbmQgZXZlbiB0aGVuIEkgZmluZCAKaXQgdW5saWtlbHkuCgpJ
IHN1Z2dlc3QgeW91IHRyeSB0byBmaW5kIG91dCB3aGF0IGlzIHJlYWxseSBnb2luZyBvbiB3aGVu
IHdlIHJlYWNoIHRoaXMgCnNpdHVhdGlvbi4KLVdoYXQgZXhhY3RseSBpcyBpbiB0aGUgYmFja2xv
ZyBxdWV1ZT8KLU9ubHkgcHVibGljYXRpb25zPwotSG93IG1hbnk/Ci1BIG1peHR1cmUgb2YgcHVi
bGljYXRpb25zIGFuZCBvdGhlciB0cmFmZmljPwotSGFzIGJ1bmRsaW5nIHJlYWxseSB3b3JrZWQg
YXMgc3VwcG9zZWQ/Ci1EbyB3ZSBzdGlsbCBoYXZlIHNvbWUgaXNzdWUgd2l0aCB0aGUgYnJvYWRj
YXN0IGxpbmsgdGhhdCBzdG9wcyBidWZmZXJzIApiZWluZyBhY2tlZCBhbmQgcmVsZWFzZWQgaW4g
YSB0aW1lbHkgbWFubmVyPwotIEhhdmUgeW91IGJlZW4gYWJsZSB0byBkdW1wIG91dCBzdWNoIGlu
Zm8gd2hlbiB0aGlzIHByb2JsZW0gb2NjdXJzPwotIEFyZSB5b3UgYWJsZSB0byByZS1wcm9kdWNl
IGl0IGluIHlvdXIgb3duIHN5c3RlbT8KCkluIHRoZSBlbmQgaXQgbWlnaHQgYmUgYXMgc2ltcGxl
IGFzIGluY3JlYXNpbmcgdGhlIHJlc2V0IGxpbWl0LCBidXQgd2UgCnJlYWxseSBzaG91bGQgdHJ5
IHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBoYXBwZW5pbmcgZmlyc3QuCgpSZWdhcmRzCi8vL2pvbgoK
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBIb2FuZyBIdXUgTGUgPGhvYW5nLmgubGVAZGVrdGVjaC5jb20u
YXU+Cj4gLS0tCj4gICBuZXQvdGlwYy9saW5rLmMgfCAgNSArKysrLQo+ICAgbmV0L3RpcGMvbm9k
ZS5jIHwgMTIgKysrKysrKysrKy0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbGluay5jIGIvbmV0
L3RpcGMvbGluay5jCj4gaW5kZXggMDZiODgwZGEyYThlLi5jYTkwOGVhZDc1M2EgMTAwNjQ0Cj4g
LS0tIGEvbmV0L3RpcGMvbGluay5jCj4gKysrIGIvbmV0L3RpcGMvbGluay5jCj4gQEAgLTEwMjIs
NyArMTAyMiwxMCBAQCBpbnQgdGlwY19saW5rX3htaXQoc3RydWN0IHRpcGNfbGluayAqbCwgc3Ry
dWN0IHNrX2J1ZmZfaGVhZCAqbGlzdCwKPiAgIAkvKiBBbGxvdyBvdmVyc3Vic2NyaXB0aW9uIG9m
IG9uZSBkYXRhIG1zZyBwZXIgc291cmNlIGF0IGNvbmdlc3Rpb24gKi8KPiAgIAlpZiAodW5saWtl
bHkobC0+YmFja2xvZ1tpbXBdLmxlbiA+PSBsLT5iYWNrbG9nW2ltcF0ubGltaXQpKSB7Cj4gICAJ
CWlmIChpbXAgPT0gVElQQ19TWVNURU1fSU1QT1JUQU5DRSkgewo+IC0JCQlwcl93YXJuKCIlczwl
cz4sIGxpbmsgb3ZlcmZsb3ciLCBsaW5rX3JzdF9tc2csIGwtPm5hbWUpOwo+ICsJCQlwcl93YXJu
X3JhdGVsaW1pdGVkKCIlczwlcz4sIGxpbmsgb3ZlcmZsb3ciLAo+ICsJCQkJCSAgICBsaW5rX3Jz
dF9tc2csIGwtPm5hbWUpOwo+ICsJCQlpZiAobGlua19pc19iY19zbmRsaW5rKGwpKQo+ICsJCQkJ
cmV0dXJuIC1FT1ZFUkZMT1c7Cj4gICAJCQlyZXR1cm4gLUVOT0JVRlM7Cj4gICAJCX0KPiAgIAkJ
cmMgPSBsaW5rX3NjaGVkdWxlX3VzZXIobCwgaGRyKTsKPiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMv
bm9kZS5jIGIvbmV0L3RpcGMvbm9kZS5jCj4gaW5kZXggZDI2OWViZTM4MmUxLi5hMzc5NzY2MTAz
NjcgMTAwNjQ0Cj4gLS0tIGEvbmV0L3RpcGMvbm9kZS5jCj4gKysrIGIvbmV0L3RpcGMvbm9kZS5j
Cj4gQEAgLTE3NTAsMTUgKzE3NTAsMjMgQEAgdm9pZCB0aXBjX25vZGVfYnJvYWRjYXN0KHN0cnVj
dCBuZXQgKm5ldCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwgaW50IHJjX2Rlc3RzKQo+ICAgCXN0cnVj
dCB0aXBjX25vZGUgKm47Cj4gICAJdTE2IGR1bW15Owo+ICAgCXUzMiBkc3Q7Cj4gKwlpbnQgcmMg
PSAwOwo+ICAgCj4gICAJLyogVXNlIGJyb2FkY2FzdCBpZiBhbGwgbm9kZXMgc3VwcG9ydCBpdCAq
Lwo+ICAgCWlmICghcmNfZGVzdHMgJiYgdGlwY19iY2FzdF9nZXRfbW9kZShuZXQpICE9IEJDTElO
S19NT0RFX1JDQVNUKSB7Cj4gKwkJdHhza2IgPSBwc2tiX2NvcHkoc2tiLCBHRlBfQVRPTUlDKTsK
PiArCQlpZiAoIXR4c2tiKQo+ICsJCQlnb3RvIHJjYXN0Owo+ICAgCQlfX3NrYl9xdWV1ZV9oZWFk
X2luaXQoJnhtaXRxKTsKPiAtCQlfX3NrYl9xdWV1ZV90YWlsKCZ4bWl0cSwgc2tiKTsKPiAtCQl0
aXBjX2JjYXN0X3htaXQobmV0LCAmeG1pdHEsICZkdW1teSk7Cj4gKwkJX19za2JfcXVldWVfdGFp
bCgmeG1pdHEsIHR4c2tiKTsKPiArCQlyYyA9IHRpcGNfYmNhc3RfeG1pdChuZXQsICZ4bWl0cSwg
JmR1bW15KTsKPiArCQlpZiAocmMgPT0gLUVPVkVSRkxPVykKPiArCQkJZ290byByY2FzdDsKPiAr
CQlrZnJlZV9za2Ioc2tiKTsKPiAgIAkJcmV0dXJuOwo+ICAgCX0KPiAgIAo+ICtyY2FzdDoKPiAg
IAkvKiBPdGhlcndpc2UgdXNlIGxlZ2FjeSByZXBsaWNhc3QgbWV0aG9kICovCj4gICAJcmN1X3Jl
YWRfbG9jaygpOwo+ICAgCWxpc3RfZm9yX2VhY2hfZW50cnlfcmN1KG4sIHRpcGNfbm9kZXMobmV0
KSwgbGlzdCkgewoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdGlwYy1kaXNjdXNzaW9uCg==
