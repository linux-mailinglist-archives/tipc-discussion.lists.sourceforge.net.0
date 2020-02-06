Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8547153F69
	for <lists+tipc-discussion@lfdr.de>; Thu,  6 Feb 2020 08:53:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1izbyi-0004Rn-Rr; Thu, 06 Feb 2020 07:53:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1izbyi-0004RU-AC
 for tipc-discussion@lists.sourceforge.net; Thu, 06 Feb 2020 07:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X33mzLDIIb3z+czzFiHPo+rL5H9waRkVjRftXDLDq+s=; b=T90QCUSu52J84wdUBhIzjQw/i3
 G2YpuwlbtIho/emQbikE2VoT7rFMoQH6gKUEguq/GV0hnHsbkxW0VSIhoQ8jCRAxGmTcYR5LgyqcS
 Grdf8pANUkqfod5pV+08JnQt4J5/oEi6vDC4RNx4k5wSDyfXhvSl8sa4ldEVaVgApMvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X33mzLDIIb3z+czzFiHPo+rL5H9waRkVjRftXDLDq+s=; b=Ldf0RWxWGUJbULPsFc7vn7bJMd
 vi1CSUmElGBRDs+DSLLuhp4Ucu4uIUvhkwb0zaL7DyX4qncFmuIeRm15Am92ZDQGXB53+hGaCTKU6
 HlV95+rWvH6+XllPCRViY0+DZg2BUdhWylpx3muEjLf9CD8pSzGsEyuFFZsAJVwsuWw0=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1izbyh-0013Ff-1q
 for tipc-discussion@lists.sourceforge.net; Thu, 06 Feb 2020 07:53:36 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 0167rM5N008107
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 5 Feb 2020 23:53:23 -0800 (PST)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.34]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Wed, 5
 Feb 2020 23:53:22 -0800
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net] tipc: fix successful connect() but timed out
Thread-Index: AQHV29Zzdd3jD8LhrkqIofje6fLiUagNzSNA
Date: Thu, 6 Feb 2020 07:53:21 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CB9D309@ALA-MBD.corp.ad.wrs.com>
References: <20200205034312.13318-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200205034312.13318-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.16.58]
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.11.1.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izbyh-0013Ff-1q
Subject: Re: [tipc-discussion] [net] tipc: fix successful connect() but
 timed out
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

QWNrZWQtYnk6IFlpbmcgWHVlIDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPg0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogVHVvbmcgTGllbiBbbWFpbHRvOnR1b25nLnQubGllbkBk
ZWt0ZWNoLmNvbS5hdV0gDQpTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDUsIDIwMjAgMTE6NDMg
QU0NClRvOiBqbWFsb3lAcmVkaGF0LmNvbTsgbWFsb3lAZG9uam9ubi5jb207IFh1ZSwgWWluZzsg
dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0KQ2M6IHRpcGMtZGVrQGRla3Rl
Y2guY29tLmF1DQpTdWJqZWN0OiBbbmV0XSB0aXBjOiBmaXggc3VjY2Vzc2Z1bCBjb25uZWN0KCkg
YnV0IHRpbWVkIG91dA0KDQpJbiBjb21taXQgNzRjZGM5MDM1YjgyICgidGlwYzogZml4IHdyb25n
IGNvbm5lY3QoKSByZXR1cm4gY29kZSIpLCB3ZQ0KZml4ZWQgdGhlIGlzc3VlIHdpdGggdGhlICdj
b25uZWN0KCknIHRoYXQgcmV0dXJucyB6ZXJvIGV2ZW4gdGhvdWdoIHRoZQ0KY29ubmVjdGluZyBo
YXMgZmFpbGVkIGJ5IHdhaXRpbmcgZm9yIHRoZSBjb25uZWN0aW9uIHRvIGJlICdFU1RBQkxJU0hF
RCcNCnJlYWxseS4gSG93ZXZlciwgdGhlIGFwcHJvYWNoIGhhcyBvbmUgZHJhd2JhY2sgaW4gY29u
anVuY3Rpb24gd2l0aCBvdXINCidsaWdodHdlaWdodCcgY29ubmVjdGlvbiBzZXR1cCBtZWNoYW5p
c20gdGhhdCB0aGUgZm9sbG93aW5nIHNjZW5hcmlvDQpjYW4gaGFwcGVuOg0KDQogICAgICAgICAg
KHNlcnZlcikgICAgICAgICAgICAgICAgICAgICAgICAoY2xpZW50KQ0KDQogICArLSBhY2NlcHQo
KXwgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICB3YWl0X2Zvcl9jb25uKCkNCiAg
IHwgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICB8Y29ubmVjdCgpIC0tLS0tLS0rDQog
ICB8ICAgICAgICAgIHw8LS0tLS0tLVtTWU5dLS0tLS0tLS0tfCAgICAgICAgICAgICAgICAgPiBz
bGVlcGluZw0KICAgfCAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICpDT05ORUNUSU5H
ICAgICAgIHwNCiAgIHwtLS0tLS0tLS0+KkVTVEFCTElTSEVEICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICB8DQogICAgICAgICAgICAgIHwtLS0tLS0tLVtBQ0tdLS0tLS0tLS0+KkVTVEFCTElT
SEVEICAgICAgPiB3YWtldXAoKQ0KICAgICAgICBzZW5kKCl8LS0tLS0tLS1bREFUQV0tLS0tLS0t
PnxcICAgICAgICAgICAgICAgID4gd2FrZXVwKCkNCiAgICAgICAgc2VuZCgpfC0tLS0tLS0tW0RB
VEFdLS0tLS0tLT58IHwgICAgICAgICAgICAgICA+IHdha2V1cCgpDQogICAgICAgICAgLiAgIC4g
ICAgICAgICAgLiAgICAgICAgICAgLiB8LT4gcmVjdnEgICAgICAgLg0KICAgICAgICAgIC4gICAu
ICAgICAgICAgIC4gICAgICAgICAgIC4gfCAgICAgICAgICAgICAgIC4NCiAgICAgICAgc2VuZCgp
fC0tLS0tLS0tW0RBVEFdLS0tLS0tLT58LyAgICAgICAgICAgICAgICA+IHdha2V1cCgpDQogICAg
ICAgY2xvc2UoKXwtLS0tLS0tLVtGSU5dLS0tLS0tLS0+KkRJU0NPTk5FQ1RJTkcgICAgfA0KICAg
ICAgICAgICAgICAqRElTQ09OTkVDVElORyAgICAgICAgIHwgICAgICAgICAgICAgICAgIHwNCiAg
ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn4+IHNj
aGVkdWxlKCkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IHdhaXQgYWdhaW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAuDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgRVRJTUVET1VUDQoNClVwb24gdGhlIHJlY2VpcHQgb2Yg
dGhlIHNlcnZlciAnQUNLJywgdGhlIGNsaWVudCBiZWNvbWVzICdFU1RBQkxJU0hFRCcNCmFuZCB0
aGUgJ3dhaXRfZm9yX2Nvbm4oKScgcHJvY2VzcyBpcyB3b2tlbiB1cCBidXQgbm90IHJ1bi4gTWVh
bndoaWxlLA0KdGhlIHNlcnZlciBzdGFydHMgdG8gc2VuZCBhIG51bWJlciBvZiBkYXRhIGZvbGxv
d2luZyBieSBhICdjbG9zZSgpJw0Kc2hvcnRseSB3aXRob3V0IHdhaXRpbmcgYW55IHJlc3BvbnNl
IGZyb20gdGhlIGNsaWVudCwgd2hpY2ggdGhlbiBmb3JjZXMNCnRoZSBjbGllbnQgc29ja2V0IHRv
IGJlICdESVNDT05ORUNUSU5HJyBpbW1lZGlhdGVseS4gV2hlbiB0aGUgd2FpdA0KcHJvY2VzcyBp
cyBzd2l0Y2hlZCB0byBiZSBydW5uaW5nLCBpdCBjb250aW51ZXMgdG8gd2FpdCB1bnRpbCB0aGUg
dGltZXINCmV4cGlyZXMgYmVjYXVzZSBvZiB0aGUgdW5leHBlY3RlZCBzb2NrZXQgc3RhdGUuIFRo
ZSBjbGllbnQgJ2Nvbm5lY3QoKScNCndpbGwgZmluYWxseSBnZXQg4oCYLUVUSU1FRE9VVOKAmSBh
bmQgZm9yY2UgdG8gcmVsZWFzZSB0aGUgc29ja2V0IHdoZXJlYXMNCnRoZXJlIHJlbWFpbnMgdGhl
IG1lc3NhZ2VzIGluIGl0cyByZWNlaXZlIHF1ZXVlLg0KDQpPYnZpb3VzbHkgdGhlIGlzc3VlIHdv
dWxkIG5vdCBoYXBwZW4gaWYgdGhlIHNlcnZlciBoYWQgc29tZSBkZWxheSBwcmlvcg0KdG8gaXRz
ICdjbG9zZSgpJyAob3IgdGhlIG51bWJlciBvZiAnREFUQScgbWVzc2FnZXMgaXMgbGFyZ2UgZW5v
dWdoKSwNCmJ1dCBhbnkga2luZCBvZiBkZWxheSB3b3VsZCBtYWtlIHRoZSBjb25uZWN0aW9uIHNl
dHVwL3NodXRkb3duICJoZWF2eSIuDQpXZSBzb2x2ZSB0aGlzIGJ5IHNpbXBseSBhbGxvd2luZyB0
aGUgJ2Nvbm5lY3QoKScgcmV0dXJucyB6ZXJvIGluIHRoaXMNCnBhcnRpY3VsYXIgY2FzZS4gVGhl
IHNvY2tldCBpcyBhbHJlYWR5ICdESVNDT05ORUNUSU5HJywgc28gYW55IGZ1cnRoZXINCndyaXRl
IHdpbGwgZ2V0ICctRVBJUEUnIGJ1dCB0aGUgc29ja2V0IGlzIHN0aWxsIGFibGUgdG8gcmVhZCB0
aGUNCm1lc3NhZ2VzIGV4aXN0aW5nIGluIGl0cyByZWNlaXZlIHF1ZXVlLg0KDQpOb3RlOiBUaGlz
IHNvbHV0aW9uIGRvZXNuJ3QgYnJlYWsgdGhlIHByZXZpb3VzIG9uZSBhcyBpdCBkZWFscyB3aXRo
IGENCmRpZmZlcmVudCBzaXR1YXRpb24gdGhhdCB0aGUgc29ja2V0IHN0YXRlIGlzICdESVNDT05O
RUNUSU5HJyBidXQgaGFzIG5vDQplcnJvciAoaS5lLiBzay0+c2tfZXJyID0gMCkuDQoNCkZpeGVz
OiA3NGNkYzkwMzViODIgKCJ0aXBjOiBmaXggd3JvbmcgY29ubmVjdCgpIHJldHVybiBjb2RlIikN
ClNpZ25lZC1vZmYtYnk6IFR1b25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNvbS5hdT4N
Ci0tLQ0KIG5ldC90aXBjL3NvY2tldC5jIHwgMiArKw0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL25ldC90aXBjL3NvY2tldC5jIGIvbmV0L3RpcGMvc29j
a2V0LmMNCmluZGV4IGY5YjRmYjkyYzBiMS4uNjkzZTg5MDIxNjFlIDEwMDY0NA0KLS0tIGEvbmV0
L3RpcGMvc29ja2V0LmMNCisrKyBiL25ldC90aXBjL3NvY2tldC5jDQpAQCAtMjQ0MSw2ICsyNDQx
LDggQEAgc3RhdGljIGludCB0aXBjX3dhaXRfZm9yX2Nvbm5lY3Qoc3RydWN0IHNvY2tldCAqc29j
aywgbG9uZyAqdGltZW9fcCkNCiAJCQlyZXR1cm4gLUVUSU1FRE9VVDsNCiAJCWlmIChzaWduYWxf
cGVuZGluZyhjdXJyZW50KSkNCiAJCQlyZXR1cm4gc29ja19pbnRyX2Vycm5vKCp0aW1lb19wKTsN
CisJCWlmIChzay0+c2tfc3RhdGUgPT0gVElQQ19ESVNDT05ORUNUSU5HKQ0KKwkJCWJyZWFrOw0K
IA0KIAkJYWRkX3dhaXRfcXVldWUoc2tfc2xlZXAoc2spLCAmd2FpdCk7DQogCQlkb25lID0gc2tf
d2FpdF9ldmVudChzaywgdGltZW9fcCwgdGlwY19za19jb25uZWN0ZWQoc2spLA0KLS0gDQoyLjEz
LjcNCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRp
cGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBj
LWRpc2N1c3Npb24K
