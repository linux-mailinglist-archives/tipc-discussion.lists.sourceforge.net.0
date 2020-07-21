Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6804A227FBF
	for <lists+tipc-discussion@lfdr.de>; Tue, 21 Jul 2020 14:16:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxrBq-0002cg-Mz; Tue, 21 Jul 2020 12:16:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1jxrBo-0002cX-MJ
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 12:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8KwOuny3MCBr4hHD6lpDBv8zvH3qeS/QRDhm2GX40lg=; b=hRK4GeZ6t8pFgO+WBPiifHYFnt
 Let4VPRdIxvIM5OUGDjMd3M5Z712KDuSeYikPd47tqF3BHircG1H7ZN6BNI64urX9MA2fBPUXsgd0
 1AHXCIM9zQxrnSuQoCdwzwILglg1FpW1zR2rcXuUr+2i+x/GwyuqQwOCahuyz8kMMjKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8KwOuny3MCBr4hHD6lpDBv8zvH3qeS/QRDhm2GX40lg=; b=UhAn5xf8j0t6q7rLNpZiiTdN2n
 FnIcWslxYchLEn56jUPz54m4YlkliKO0KvmQLcv7V9lpfILMWya0ipa0Gu+P3UjZRJNPTWwk7TmDm
 XiH/m/xoZgGNNK9oWOwrL0tWu7L2JZx6Rsahb/WiktPPn6Fq86GKUGMUREOZ9AbYE7ok=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxrBn-00F2VJ-86
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 12:16:08 +0000
Received: by mail-wr1-f66.google.com with SMTP id a15so6031675wrh.10
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 21 Jul 2020 05:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8KwOuny3MCBr4hHD6lpDBv8zvH3qeS/QRDhm2GX40lg=;
 b=Ow3P9TLXEs8nFIR5bD6KgqphoGidMIRIGbeR9sZU8vvIYV6Exf2JXoM0iGf98JzAsd
 +q6afv8iRXdjORLycOHPK+YtJsswsVvUDd9yK78ctAJribqrIK5USkhLdUXlZ/3niUmO
 WxwEfBG4TgzoXJbvGNy+tE+V+VTmsWLFINRTOHNg61OEAo9KsQGuHt9UbIPWWuzvCFnE
 PG9uRHgwnrYG59LhqT56hCEpFuaxjXB1HNq4szBSeL/prHFon+ZG1PCWVN6CVCpR4mck
 aGbD8GlEYTUOgcTIHgbbq4wHnZ55RSt2WCNewxDf1M+dcU4xSWaRD+KvBGFbcqRFySQE
 W2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8KwOuny3MCBr4hHD6lpDBv8zvH3qeS/QRDhm2GX40lg=;
 b=Vn+S856iR7mn5+HZKnEn7Hv3HuEqIssPgyWp4qXnvkFZLOAN0UDfujGUcerGOEafSs
 rcmpW86LhRp14mp65DxS5Xf4DSu6x5zhLcwqFuxnBcPULyle/eQ0pbqw7vZ81cjtRwCo
 YhHIuQb4TmwL9UGD96ghAXFEem269/CflJax+aM+TwLGzUa8Ho28EInwIbwpzL1yMnze
 +Khp8OZmjcBo7o2jUQsG76VLoX5UpXjyihHbzvQu8zNEwEIAXMJwL9e3oDiZ8HDLvlMY
 GnD52BLXoROiFfV5BefVnY+jxa3RGdHQlUlcukBV9X3++Ipwlefj3z4BUyvpHy0BSMBi
 Weww==
X-Gm-Message-State: AOAM533SK3g+A/qVXVbCVuSVzBkCZBlKGXdt6+Q64i/qjYATOVj9O0g7
 P6SbitWfmoReHUC1/66Z5xgrOOxPWLorf05PCw4=
X-Google-Smtp-Source: ABdhPJzAg/p2odz3zvzjbXVqB/YLIzsG/X2rnw/gsXYDfKtsx9a9xJUJyAvKaAsNG6QlWzo7vDiFE1R2K/epH6wUUMI=
X-Received: by 2002:a5d:43ca:: with SMTP id v10mr12328440wrr.299.1595333758501; 
 Tue, 21 Jul 2020 05:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200603050601.19570-1-tuong.t.lien@dektech.com.au>
 <CADvbK_cE8boY0Y7CcNS_Vh5gZGf4+Pb2urG993V9wnuS=vQK3g@mail.gmail.com>
 <AM6PR0502MB3925A9F210B21A39D9F62AE7E2780@AM6PR0502MB3925.eurprd05.prod.outlook.com>
In-Reply-To: <AM6PR0502MB3925A9F210B21A39D9F62AE7E2780@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 21 Jul 2020 20:26:42 +0800
Message-ID: <CADvbK_e9AP-BeOQSygnSUxbVKXp_e_yUFQEaH-tQqeQfuQYCRw@mail.gmail.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jxrBn-00F2VJ-86
Subject: Re: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference
 in streaming
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
Cc: network dev <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, davem <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBKdWwgMjEsIDIwMjAgYXQgNzoyNiBQTSBUdW9uZyBUb25nIExpZW4KPHR1b25nLnQu
bGllbkBkZWt0ZWNoLmNvbS5hdT4gd3JvdGU6Cj4KPgo+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQo+ID4gRnJvbTogWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPgo+ID4gU2Vu
dDogVHVlc2RheSwgSnVseSAyMSwgMjAyMCA2OjIzIFBNCj4gPiBUbzogVHVvbmcgVG9uZyBMaWVu
IDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+Cj4gPiBDYzogZGF2ZW0gPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+OyBqbWFsb3lAcmVkaGF0LmNvbTsgbWFsb3lAZG9uam9ubi5jb207IFlpbmcgWHVl
IDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPjsgbmV0d29yayBkZXYKPiA+IDxuZXRkZXZAdmdlci5r
ZXJuZWwub3JnPjsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+ID4gU3Vi
amVjdDogUmU6IFt0aXBjLWRpc2N1c3Npb25dIFtuZXQtbmV4dF0gdGlwYzogZml4IE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZSBpbiBzdHJlYW1pbmcKPiA+Cj4gPiBPbiBXZWQsIEp1biAzLCAyMDIw
IGF0IDE6MDYgUE0gVHVvbmcgTGllbiA8dHVvbmcudC5saWVuQGRla3RlY2guY29tLmF1PiB3cm90
ZToKPiA+ID4KPiA+ID4gc3l6Ym90IGZvdW5kIHRoZSBmb2xsb3dpbmcgY3Jhc2g6Cj4gPiA+Cj4g
PiA+IGdlbmVyYWwgcHJvdGVjdGlvbiBmYXVsdCwgcHJvYmFibHkgZm9yIG5vbi1jYW5vbmljYWwg
YWRkcmVzcyAweGRmZmZmYzAwMDAwMDAwMTk6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBLQVNBTgo+
ID4gPiBLQVNBTjogbnVsbC1wdHItZGVyZWYgaW4gcmFuZ2UgWzB4MDAwMDAwMDAwMDAwMDBjOC0w
eDAwMDAwMDAwMDAwMDAwY2ZdCj4gPiA+IENQVTogMSBQSUQ6IDcwNjAgQ29tbTogc3l6LWV4ZWN1
dG9yMzk0IE5vdCB0YWludGVkIDUuNy4wLXJjNi1zeXprYWxsZXIgIzAKPiA+ID4gSGFyZHdhcmUg
bmFtZTogR29vZ2xlIEdvb2dsZSBDb21wdXRlIEVuZ2luZS9Hb29nbGUgQ29tcHV0ZSBFbmdpbmUs
IEJJT1MgR29vZ2xlIDAxLzAxLzIwMTEKPiA+ID4gUklQOiAwMDEwOl9fdGlwY19zZW5kc3RyZWFt
KzB4YmRlLzB4MTFmMCBuZXQvdGlwYy9zb2NrZXQuYzoxNTkxCj4gPiA+IENvZGU6IDAwIDAwIDAw
IDAwIDQ4IDM5IDVjIDI0IDI4IDQ4IDBmIDQ0IGQ4IGU4IGZhIDNlIGRiIGY5IDQ4IGI4IDAwIDAw
IDAwIDAwIDAwIGZjIGZmIGRmIDQ4IDhkIGJiIGM4IDAwIDAwIDAwIDQ4IDg5IGZhIDQ4IGMxIGVh
IDAzIDw4MD4gM2MKPiA+IDAyIDAwIDBmIDg1IGUyIDA0IDAwIDAwIDQ4IDhiIDliIGM4IDAwIDAw
IDAwIDQ4IGI4IDAwIDAwIDAwCj4gPiA+IFJTUDogMDAxODpmZmZmYzkwMDAzZWY3ODE4IEVGTEFH
UzogMDAwMTAyMDIKPiA+ID4gUkFYOiBkZmZmZmMwMDAwMDAwMDAwIFJCWDogMDAwMDAwMDAwMDAw
MDAwMCBSQ1g6IGZmZmZmZmZmODc5N2ZkOWQKPiA+ID4gUkRYOiAwMDAwMDAwMDAwMDAwMDE5IFJT
STogZmZmZmZmZmY4Nzk3ZmRlNiBSREk6IDAwMDAwMDAwMDAwMDAwYzgKPiA+ID4gUkJQOiBmZmZm
ODg4MDk5ODQ4MDQwIFIwODogZmZmZjg4ODA5YTVmNjQ0MCBSMDk6IGZmZmZmYmZmZjE4NjBiNGMK
PiA+ID4gUjEwOiBmZmZmZmZmZjhjMzA1YTVmIFIxMTogZmZmZmZiZmZmMTg2MGI0YiBSMTI6IGZm
ZmY4ODgwOTk4NDg1N2UKPiA+ID4gUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogZmZmZjg4ODA4
NmFhNDAwMCBSMTU6IDAwMDAwMDAwMDAwMDAwMDAKPiA+ID4gRlM6ICAwMDAwMDAwMDAwOWI0ODgw
KDAwMDApIEdTOmZmZmY4ODgwYWU3MDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+
ID4gPiBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4g
PiA+IENSMjogMDAwMDAwMDAyMDAwMDE0MCBDUjM6IDAwMDAwMDAwYTdmZGYwMDAgQ1I0OiAwMDAw
MDAwMDAwMTQwNmUwCj4gPiA+IERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAw
MDAwMDAgRFIyOiAwMDAwMDAwMDAwMDAwMDAwCj4gPiA+IERSMzogMDAwMDAwMDAwMDAwMDAwMCBE
UjY6IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwCj4gPiA+IENhbGwgVHJh
Y2U6Cj4gPiA+ICB0aXBjX3NlbmRzdHJlYW0rMHg0Yy8weDcwIG5ldC90aXBjL3NvY2tldC5jOjE1
MzMKPiA+ID4gIHNvY2tfc2VuZG1zZ19ub3NlYyBuZXQvc29ja2V0LmM6NjUyIFtpbmxpbmVdCj4g
PiA+ICBzb2NrX3NlbmRtc2crMHhjZi8weDEyMCBuZXQvc29ja2V0LmM6NjcyCj4gPiA+ICBfX19f
c3lzX3NlbmRtc2crMHgzMmYvMHg4MTAgbmV0L3NvY2tldC5jOjIzNTIKPiA+ID4gIF9fX3N5c19z
ZW5kbXNnKzB4MTAwLzB4MTcwIG5ldC9zb2NrZXQuYzoyNDA2Cj4gPiA+ICBfX3N5c19zZW5kbW1z
ZysweDE5NS8weDQ4MCBuZXQvc29ja2V0LmM6MjQ5Ngo+ID4gPiAgX19kb19zeXNfc2VuZG1tc2cg
bmV0L3NvY2tldC5jOjI1MjUgW2lubGluZV0KPiA+ID4gIF9fc2Vfc3lzX3NlbmRtbXNnIG5ldC9z
b2NrZXQuYzoyNTIyIFtpbmxpbmVdCj4gPiA+ICBfX3g2NF9zeXNfc2VuZG1tc2crMHg5OS8weDEw
MCBuZXQvc29ja2V0LmM6MjUyMgo+ID4gPiAgZG9fc3lzY2FsbF82NCsweGY2LzB4N2QwIGFyY2gv
eDg2L2VudHJ5L2NvbW1vbi5jOjI5NQo+ID4gPiAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2Zy
YW1lKzB4NDkvMHhiMwo+ID4gPiBSSVA6IDAwMzM6MHg0NDAxOTkKPiA+ID4gLi4uCj4gPiA+Cj4g
PiA+IFRoaXMgYnVnIHdhcyBiaXNlY3RlZCB0byBjb21taXQgMGEzZTA2MGYzNDBkICgidGlwYzog
YWRkIHRlc3QgZm9yIE5hZ2xlCj4gPiA+IGFsZ29yaXRobSBlZmZlY3RpdmVuZXNzIikuIEhvd2V2
ZXIsIGl0IGlzIG5vdCB0aGUgY2FzZSwgdGhlIHRyb3VibGUgd2FzCj4gPiA+IGZyb20gdGhlIGJh
c2UgaW4gdGhlIGNhc2Ugb2YgemVybyBkYXRhIGxlbmd0aCBtZXNzYWdlIHNlbmRpbmcsIHdlIHdv
dWxkCj4gPiA+IHVuZXhwZWN0ZWRseSBtYWtlIGFuIGVtcHR5ICd0eHEnIHF1ZXVlIGFmdGVyIHRo
ZSAndGlwY19tc2dfYXBwZW5kKCknIGluCj4gPiA+IE5hZ2xlIG1vZGUuCj4gPiA+Cj4gPiA+IEEg
c2ltaWxhciBjcmFzaCBjYW4gYmUgZ2VuZXJhdGVkIGV2ZW4gd2l0aG91dCB0aGUgYmlzZWN0ZWQg
cGF0Y2ggYnV0IGF0Cj4gPiA+IHRoZSBsaW5rIGxheWVyIHdoZW4gaXQgYWNjZXNzZXMgdGhlIGVt
cHR5IHF1ZXVlLgo+ID4gPgo+ID4gPiBXZSBzb2x2ZSB0aGUgaXNzdWVzIGJ5IGJ1aWxkaW5nIGF0
IGxlYXN0IG9uZSBidWZmZXIgdG8gZ28gd2l0aCBzb2NrZXQncwo+ID4gPiBoZWFkZXIgYW5kIGFu
IG9wdGlvbmFsIGRhdGEgc2VjdGlvbiB0aGF0IG1heSBiZSBlbXB0eSBsaWtlIHdoYXQgd2UgaGFk
Cj4gPiA+IHdpdGggdGhlICd0aXBjX21zZ19idWlsZCgpJy4KPiA+ID4KPiA+ID4gTm90ZTogdGhl
IHByZXZpb3VzIGNvbW1pdCA0YzIxZGFhZTNkYmMgKCJ0aXBjOiBGaXggTlVMTCBwb2ludGVyCj4g
PiA+IGRlcmVmZXJlbmNlIGluIF9fdGlwY19zZW5kc3RyZWFtKCkiKSBpcyBvYnNvbGV0ZWQgYnkg
dGhpcyBvbmUgc2luY2UgdGhlCj4gPiA+ICd0eHEnIHdpbGwgYmUgbmV2ZXIgZW1wdHkgYW5kIHRo
ZSBjaGVjayBvZiAnc2tiICE9IE5VTEwnIGlzIHVubmVjZXNzYXJ5Cj4gPiA+IGJ1dCBpdCBpcyBz
YWZlIGFueXdheS4KPiA+IEhpLCBUdW9uZwo+ID4KPiA+IElmIGNvbW1pdCA0YzIxZGFhZTNkYmMg
aXMgb2Jzb2xldGVkIGJ5IHRoaXMgb25lLCBjYW4geW91IHBsZWFzZQo+ID4gc2VuZCBhIHBhdGNo
IHRvIHJldmVydCBpdD8KPiA+Cj4gPiBUaGFua3MuCj4gSGkgWGluLAo+Cj4gVGhhdCBwYXRjaCBp
bmNsdWRlcyBhIHNhbml0eSBjaGVjayB3aGljaCBpcyBhbHdheXMgdHJ1ZSBhbmQgc2FmZSwgc28g
SSBkb27igJl0IHRoaW5rCj4gd2UgbmVlZCB0byByZXZlcnQgaXQuIERvIHlvdSBhZ3JlZT8Kc3Vy
ZWx5IGl0J3Mgc2FmZS4KClBlb3BsZSBtYXkgYmUgY29uZnVzZWQgd2hlbiByZWFkaW5nIHRoZSBj
b2RlOgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChza2IpIHsKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1zZ19zZXRfYWNrX3JlcXVpcmVkKGJ1Zl9t
c2coc2tiKSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0c2stPmV4
cGVjdF9hY2sgPSB0cnVlOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSB7
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0c2stPmV4cGVjdF9hY2sg
PSBmYWxzZTsgIDwtLS0tLSBbMV0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cgps
aWtlIHdoeSBleHBlY3RfYWNrIG5lZWRzIHRvIGJlIHNldCB0byBmYWxzZSBpbiBbMV0KCj4KPiBC
Ui9UdW9uZwo+ID4KPiA+ID4KPiA+ID4gUmVwb3J0ZWQtYnk6IHN5emJvdCs4ZWFjNmQwMzBlNzgw
N2MyMWQzMkBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4gPiA+IEZpeGVzOiBjMGJjZWI5N2Ri
OWUgKCJ0aXBjOiBhZGQgc21hcnQgbmFnbGUgZmVhdHVyZSIpCj4gPiA+IEFja2VkLWJ5OiBKb24g
TWFsb3kgPGptYWxveUByZWRoYXQuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBUdW9uZyBMaWVu
IDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+Cj4gPiA+IC0tLQo+ID4gPiAgbmV0L3RpcGMv
bXNnLmMgfCA0ICsrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9uZXQvdGlwYy9tc2cuYyBiL25l
dC90aXBjL21zZy5jCj4gPiA+IGluZGV4IGMwYWZjZDYyN2M1ZS4uMDQ2ZTRjYjNhY2VhIDEwMDY0
NAo+ID4gPiAtLS0gYS9uZXQvdGlwYy9tc2cuYwo+ID4gPiArKysgYi9uZXQvdGlwYy9tc2cuYwo+
ID4gPiBAQCAtMjIxLDcgKzIyMSw3IEBAIGludCB0aXBjX21zZ19hcHBlbmQoc3RydWN0IHRpcGNf
bXNnICpfaGRyLCBzdHJ1Y3QgbXNnaGRyICptLCBpbnQgZGxlbiwKPiA+ID4gICAgICAgICBhY2Nv
dW50ZWQgPSBza2IgPyBtc2dfYmxvY2tzKGJ1Zl9tc2coc2tiKSkgOiAwOwo+ID4gPiAgICAgICAg
IHRvdGFsID0gYWNjb3VudGVkOwo+ID4gPgo+ID4gPiAtICAgICAgIHdoaWxlIChyZW0pIHsKPiA+
ID4gKyAgICAgICBkbyB7Cj4gPiA+ICAgICAgICAgICAgICAgICBpZiAoIXNrYiB8fCBza2ItPmxl
biA+PSBtc3MpIHsKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgc2tiID0gdGlwY19idWZf
YWNxdWlyZShtc3MsIEdGUF9LRVJORUwpOwo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBp
ZiAodW5saWtlbHkoIXNrYikpCj4gPiA+IEBAIC0yNDUsNyArMjQ1LDcgQEAgaW50IHRpcGNfbXNn
X2FwcGVuZChzdHJ1Y3QgdGlwY19tc2cgKl9oZHIsIHN0cnVjdCBtc2doZHIgKm0sIGludCBkbGVu
LAo+ID4gPiAgICAgICAgICAgICAgICAgc2tiX3B1dChza2IsIGNweSk7Cj4gPiA+ICAgICAgICAg
ICAgICAgICByZW0gLT0gY3B5Owo+ID4gPiAgICAgICAgICAgICAgICAgdG90YWwgKz0gbXNnX2Js
b2NrcyhoZHIpIC0gY3VycjsKPiA+ID4gLSAgICAgICB9Cj4gPiA+ICsgICAgICAgfSB3aGlsZSAo
cmVtKTsKPiA+ID4gICAgICAgICByZXR1cm4gdG90YWwgLSBhY2NvdW50ZWQ7Cj4gPiA+ICB9Cj4g
PiA+Cj4gPiA+IC0tCj4gPiA+IDIuMTMuNwo+ID4gPgo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiB0aXBjLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cj4gPiA+IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKPiA+ID4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
dGlwYy1kaXNjdXNzaW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
