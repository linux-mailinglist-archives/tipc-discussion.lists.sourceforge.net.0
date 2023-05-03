Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E86D6F5932
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 15:41:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1puCj0-0008JW-Nu;
	Wed, 03 May 2023 13:40:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1puCiy-0008JQ-RM
 for tipc-discussion@lists.sourceforge.net;
 Wed, 03 May 2023 13:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2CwoA/V621d72KVoXTfvZWyIMvfPtUdQb7pefHxHF30=; b=aoOmJAYaqf6IUZ/Ztl7i3ANVom
 7X8nuhFtLCC/dVVos5/ymxwwVUQ1BO43ggX604IjFS0warOYV6J+Kd+LEBJbvw/+BmOa3/dsw1Csw
 LBCp7sSRrc0KVzrgALpNjh1uOReAJBEqx3BKDa6HKhK85OOeXWes4+qS9wKRdNJLkPqY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2CwoA/V621d72KVoXTfvZWyIMvfPtUdQb7pefHxHF30=; b=eSrZR4I+/hHUOq8dWEI6Eaqzaa
 0iwk+AlPsa9Est/3WI6fdCu3Fx7LABtPiyEeJlXRpabPwZmQtIj5zVF71oakrQsAjPf+VmTSgJ/WH
 I+Pz2gTSFc60xm7SdhhFY7gPBBiPXDA4Q9j54UI4GoieZCXmKxwNvrFPNsYN7sUh/gBc=;
Received: from mail-yw1-f169.google.com ([209.85.128.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1puCiy-0002r5-DC for tipc-discussion@lists.sourceforge.net;
 Wed, 03 May 2023 13:40:53 +0000
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-55b7630a736so14205017b3.1
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 03 May 2023 06:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683121246; x=1685713246;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2CwoA/V621d72KVoXTfvZWyIMvfPtUdQb7pefHxHF30=;
 b=fbeqWTWM2Z52Zm2X2fbDsY2BsLty7a6T1ghr0CKbXPT+KhgQ/uOOc8KtgC9r6Xa8et
 0hTKgWud/7s9QVqxSI8hWo++4KypFmAKpYx3pZQJ+ZVLiINl11OGvExWb3NQAnyT2gVa
 jxBJBx2f0Wgqg/+6HHBWUPEEuP7TzBEL1R6fC0bL6AWb82jQQrQ2Fma8Z2rNTI0orhxb
 ZCHZsBusv6vKi+dAhP8gsAHb47NRaW82xPLKVjBTix4xO/MUK7DLlQ4yP8lDvQmJ+kj9
 /54OtdpJqvf3UIQHnloxYjnHOcNj6vk6mbj+Ot2/vcFsab67CeIq4sVFAEbEn7Dvb8SX
 xHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683121246; x=1685713246;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2CwoA/V621d72KVoXTfvZWyIMvfPtUdQb7pefHxHF30=;
 b=WudOHHBe+DIumzOQD8f0En154q8tZeLuuIQw/tqmCag2IWoFim4HI6r8L9PsUuSOeF
 5MNI6NkVKPHDiZCk+73qw3uRGZxQSHWn13gULE7u0oA7g7fRPrvU5itJcuBqRHOc9MZA
 8OvAHUwfsIBY4Xw9vNIAHOpD7+om3lamMnQl56WtXKtdKJXUVOyXwrnq0iSgGccXVKHE
 Ik5cwAiFWUTRKY+3pzof2S5VLA0uFmc5nHBeis4mmW5C4VNTlgExW6CSvlZjJyNsMzpG
 Mq9cN7pK9x+LkYJWnogurYHT0PqtTbbokF65DdjYTBGcZNjupM/YaExrF/eyWtaUrXsI
 8gww==
X-Gm-Message-State: AC+VfDxOvsJ6VBcXTxKjKozfBPJ5bW/iQ4GIiGV9AQtcB4/QpNpty7WE
 +O56j7rZUcblHIV70kIpfjZrQCXYildWPUmjN0w=
X-Google-Smtp-Source: ACHHUZ5eZhRtcOVu8izjfk75hIpMtfZcgCVv3pvC+/a8STZzar8yJHFd7Gzw/R6DYsdo+iA6MIUCt0CMFhTIQV9vISs=
X-Received: by 2002:a0d:ea13:0:b0:55a:21c1:7679 with SMTP id
 t19-20020a0dea13000000b0055a21c17679mr11405770ywe.19.1683121246643; Wed, 03
 May 2023 06:40:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683065352.git.lucien.xin@gmail.com>
 <8e3827ffaf71c0636541c01f76ff3a65868433ea.1683065352.git.lucien.xin@gmail.com>
 <DB9PR05MB9078E51851B2C67489B2BC02886C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB9078E51851B2C67489B2BC02886C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 3 May 2023 09:40:26 -0400
Message-ID: <CADvbK_fAfetKdgrK3_WpLMv0+xRgDWrvQE1viTJU4p=7QiUkWQ@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, May 2, 2023 at 11:37 PM Tung Quang Nguyen wrote:
    > > >As different media may requires different min mtu, and even the > >same
    media with different net family requires different min mtu, > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [lucien.xin[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1puCiy-0002r5-DC
Subject: Re: [tipc-discussion] [PATCHv2 net 1/3] tipc: add
 tipc_bearer_min_mtu to calculate min mtu
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
Cc: network dev <netdev@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "kuba@kernel.org" <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCAxMTozN+KAr1BNIFR1bmcgUXVhbmcgTmd1eWVuCjx0dW5n
LnEubmd1eWVuQGRla3RlY2guY29tLmF1PiB3cm90ZToKPgo+ID5BcyBkaWZmZXJlbnQgbWVkaWEg
bWF5IHJlcXVpcmVzIGRpZmZlcmVudCBtaW4gbXR1LCBhbmQgZXZlbiB0aGUKPiA+c2FtZSBtZWRp
YSB3aXRoIGRpZmZlcmVudCBuZXQgZmFtaWx5IHJlcXVpcmVzIGRpZmZlcmVudCBtaW4gbXR1LAo+
ID5hZGQgdGlwY19iZWFyZXJfbWluX210dSgpIHRvIGNhbGN1bGF0ZSBtaW4gbXR1IGFjY29yZGlu
Z2x5Lgo+ID4KPiA+VGhpcyBBUEkgd2lsbCBiZSB1c2VkIHRvIGNoZWNrIHRoZSBuZXcgbXR1IHdo
ZW4gZG9pbmcgdGhlIGxpbmsKPiA+bXR1IG5lZ290aWF0aW9uIGluIHRoZSBuZXh0IHBhdGNoLgo+
ID4KPiA+djEtPnYyOgo+ID4gLSB1c2UgYmVhcmVyX2dldCgpIHRvIGF2b2lkIHRoZSBvcGVuIGNv
ZGUuCj4gVGhpcyB2ZXJzaW9uIGNoYW5nZSBjb21tZW50IGRvZXMgbm90IHNlZW0gcmlnaHQuIFBs
ZWFzZSBjb3JyZWN0IGl0IHRvIGF2b2lkIGNvbmZ1c2lvbiBhbmQgcHV0IGl0IGFmdGVyICItLS0i
LgpTZWUgdGhlIGNvbW1lbnQgaW4gUGF0Y2ggMi8zLgoKPiA+Cj4gPlNpZ25lZC1vZmYtYnk6IFhp
biBMb25nIDxsdWNpZW4ueGluQGdtYWlsLmNvbT4KPiA+LS0tCj4gPiBuZXQvdGlwYy9iZWFyZXIu
YyAgICB8IDEzICsrKysrKysrKysrKysKPiA+IG5ldC90aXBjL2JlYXJlci5oICAgIHwgIDMgKysr
Cj4gPiBuZXQvdGlwYy91ZHBfbWVkaWEuYyB8ICA1ICsrKy0tCj4gPiAzIGZpbGVzIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID5kaWZmIC0tZ2l0IGEvbmV0
L3RpcGMvYmVhcmVyLmMgYi9uZXQvdGlwYy9iZWFyZXIuYwo+ID5pbmRleCAzNWNhYzc3MzNmZDMu
LjBlOWEyOWUxNTM2YiAxMDA2NDQKPiA+LS0tIGEvbmV0L3RpcGMvYmVhcmVyLmMKPiA+KysrIGIv
bmV0L3RpcGMvYmVhcmVyLmMKPiA+QEAgLTU0MSw2ICs1NDEsMTkgQEAgaW50IHRpcGNfYmVhcmVy
X210dShzdHJ1Y3QgbmV0ICpuZXQsIHUzMiBiZWFyZXJfaWQpCj4gPiAgICAgICByZXR1cm4gbXR1
Owo+ID4gfQo+ID4KPiA+K2ludCB0aXBjX2JlYXJlcl9taW5fbXR1KHN0cnVjdCBuZXQgKm5ldCwg
dTMyIGJlYXJlcl9pZCkKPiA+K3sKPiA+KyAgICAgIGludCBtdHUgPSBUSVBDX01JTl9CRUFSRVJf
TVRVOwo+ID4rICAgICAgc3RydWN0IHRpcGNfYmVhcmVyICpiOwo+ID4rCj4gPisgICAgICByY3Vf
cmVhZF9sb2NrKCk7Cj4gPisgICAgICBiID0gYmVhcmVyX2dldChuZXQsIGJlYXJlcl9pZCk7Cj4g
PisgICAgICBpZiAoYikKPiA+KyAgICAgICAgICAgICAgbXR1ICs9IGItPmVuY2FwX2hsZW47Cj4g
PisgICAgICByY3VfcmVhZF91bmxvY2soKTsKPiA+KyAgICAgIHJldHVybiBtdHU7Cj4gPit9Cj4g
PisKPiA+IC8qIHRpcGNfYmVhcmVyX3htaXRfc2tiIC0gc2VuZHMgYnVmZmVyIHRvIGRlc3RpbmF0
aW9uIG92ZXIgYmVhcmVyCj4gPiAgKi8KPiA+IHZvaWQgdGlwY19iZWFyZXJfeG1pdF9za2Ioc3Ry
dWN0IG5ldCAqbmV0LCB1MzIgYmVhcmVyX2lkLAo+ID5kaWZmIC0tZ2l0IGEvbmV0L3RpcGMvYmVh
cmVyLmggYi9uZXQvdGlwYy9iZWFyZXIuaAo+ID5pbmRleCA0OTBhZDZlNWY3YTMuLmJkMGNjNWMy
ODdlZiAxMDA2NDQKPiA+LS0tIGEvbmV0L3RpcGMvYmVhcmVyLmgKPiA+KysrIGIvbmV0L3RpcGMv
YmVhcmVyLmgKPiA+QEAgLTE0Niw2ICsxNDYsNyBAQCBzdHJ1Y3QgdGlwY19tZWRpYSB7Cj4gPiAg
KiBAaWRlbnRpdHk6IGFycmF5IGluZGV4IG9mIHRoaXMgYmVhcmVyIHdpdGhpbiBUSVBDIGJlYXJl
ciBhcnJheQo+ID4gICogQGRpc2M6IHB0ciB0byBsaW5rIHNldHVwIHJlcXVlc3QKPiA+ICAqIEBu
ZXRfcGxhbmU6IG5ldHdvcmsgcGxhbmUgKCdBJyB0aHJvdWdoICdIJykgY3VycmVudGx5IGFzc29j
aWF0ZWQgd2l0aCBiZWFyZXIKPiA+KyAqIEBlbmNhcF9obGVuOiBlbmNhcCBoZWFkZXJzIGxlbmd0
aAo+ID4gICogQHVwOiBiZWFyZXIgdXAgZmxhZyAoYml0IDApCj4gPiAgKiBAcmVmY250OiB0aXBj
X2JlYXJlciByZWZlcmVuY2UgY291bnRlcgo+ID4gICoKPiA+QEAgLTE3MCw2ICsxNzEsNyBAQCBz
dHJ1Y3QgdGlwY19iZWFyZXIgewo+ID4gICAgICAgdTMyIGlkZW50aXR5Owo+ID4gICAgICAgc3Ry
dWN0IHRpcGNfZGlzY292ZXJlciAqZGlzYzsKPiA+ICAgICAgIGNoYXIgbmV0X3BsYW5lOwo+ID4r
ICAgICAgdTE2IGVuY2FwX2hsZW47Cj4gPiAgICAgICB1bnNpZ25lZCBsb25nIHVwOwo+ID4gICAg
ICAgcmVmY291bnRfdCByZWZjbnQ7Cj4gPiB9Owo+ID5AQCAtMjMyLDYgKzIzNCw3IEBAIGludCB0
aXBjX2JlYXJlcl9zZXR1cCh2b2lkKTsKPiA+IHZvaWQgdGlwY19iZWFyZXJfY2xlYW51cCh2b2lk
KTsKPiA+IHZvaWQgdGlwY19iZWFyZXJfc3RvcChzdHJ1Y3QgbmV0ICpuZXQpOwo+ID4gaW50IHRp
cGNfYmVhcmVyX210dShzdHJ1Y3QgbmV0ICpuZXQsIHUzMiBiZWFyZXJfaWQpOwo+ID4raW50IHRp
cGNfYmVhcmVyX21pbl9tdHUoc3RydWN0IG5ldCAqbmV0LCB1MzIgYmVhcmVyX2lkKTsKPiA+IGJv
b2wgdGlwY19iZWFyZXJfYmNhc3Rfc3VwcG9ydChzdHJ1Y3QgbmV0ICpuZXQsIHUzMiBiZWFyZXJf
aWQpOwo+ID4gdm9pZCB0aXBjX2JlYXJlcl94bWl0X3NrYihzdHJ1Y3QgbmV0ICpuZXQsIHUzMiBi
ZWFyZXJfaWQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LAo+ID5kaWZmIC0tZ2l0IGEvbmV0L3RpcGMvdWRwX21lZGlhLmMgYi9uZXQvdGlwYy91ZHBfbWVk
aWEuYwo+ID5pbmRleCBjMmJiODE4NzA0YzguLjBhODUyNDRmZDYxOCAxMDA2NDQKPiA+LS0tIGEv
bmV0L3RpcGMvdWRwX21lZGlhLmMKPiA+KysrIGIvbmV0L3RpcGMvdWRwX21lZGlhLmMKPiA+QEAg
LTczOCw4ICs3MzgsOCBAQCBzdGF0aWMgaW50IHRpcGNfdWRwX2VuYWJsZShzdHJ1Y3QgbmV0ICpu
ZXQsIHN0cnVjdCB0aXBjX2JlYXJlciAqYiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICB1ZHBf
Y29uZi5sb2NhbF9pcC5zX2FkZHIgPSBsb2NhbC5pcHY0LnNfYWRkcjsKPiA+ICAgICAgICAgICAg
ICAgdWRwX2NvbmYudXNlX3VkcF9jaGVja3N1bXMgPSBmYWxzZTsKPiA+ICAgICAgICAgICAgICAg
dWItPmlmaW5kZXggPSBkZXYtPmlmaW5kZXg7Cj4gPi0gICAgICAgICAgICAgIGlmICh0aXBjX210
dV9iYWQoZGV2LCBzaXplb2Yoc3RydWN0IGlwaGRyKSArCj4gPi0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzaXplb2Yoc3RydWN0IHVkcGhkcikpKSB7Cj4gPisgICAgICAgICAg
ICAgIGItPmVuY2FwX2hsZW4gPSBzaXplb2Yoc3RydWN0IGlwaGRyKSArIHNpemVvZihzdHJ1Y3Qg
dWRwaGRyKTsKPiA+KyAgICAgICAgICAgICAgaWYgKHRpcGNfbXR1X2JhZChkZXYsIGItPmVuY2Fw
X2hsZW4pKSB7Cj4gSSBhZ3JlZSB0aGF0IGNhbGxpbmcgdGlwY19tdHVfYmFkKCkgaXMgbm90IG5l
Y2Vzc2FyeSBmb3IgVURQIGJlYXJlciBlbmFibGluZy4gWW91IGNhbiByZW1vdmUgaXQgaW4gdGhp
cyBwYXRjaC4KVG8gYmUgaG9uZXN0LCBpdCdzIE5PVCBhcHByb3ByaWF0ZSB0byBkbyBjb2RlIGNs
ZWFudXAgaW4gdGhpcyBwYXRjaCwKbm9yIGluIG5ldC5naXQuCgpUaGFua3MuCgo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIGVyciA9IC1FSU5WQUw7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
Z290byBlcnI7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+QEAgLTc2MCw2ICs3NjAsNyBAQCBzdGF0
aWMgaW50IHRpcGNfdWRwX2VuYWJsZShzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdCB0aXBjX2JlYXJl
ciAqYiwKPiA+ICAgICAgICAgICAgICAgZWxzZQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHVk
cF9jb25mLmxvY2FsX2lwNiA9IGxvY2FsLmlwdjY7Cj4gPiAgICAgICAgICAgICAgIHViLT5pZmlu
ZGV4ID0gZGV2LT5pZmluZGV4Owo+ID4rICAgICAgICAgICAgICBiLT5lbmNhcF9obGVuID0gc2l6
ZW9mKHN0cnVjdCBpcHY2aGRyKSArIHNpemVvZihzdHJ1Y3QgdWRwaGRyKTsKPiA+ICAgICAgICAg
ICAgICAgYi0+bXR1ID0gMTI4MDsKPiA+ICNlbmRpZgo+ID4gICAgICAgfSBlbHNlIHsKPiA+LS0K
PiA+Mi4zOS4xCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdGlwYy1kaXNjdXNzaW9uCg==
