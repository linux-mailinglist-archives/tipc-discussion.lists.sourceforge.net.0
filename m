Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82041282FA9
	for <lists+tipc-discussion@lfdr.de>; Mon,  5 Oct 2020 06:36:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kPIEA-0000lO-PO; Mon, 05 Oct 2020 04:35:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kPIE4-0000ke-Ev
 for tipc-discussion@lists.sourceforge.net; Mon, 05 Oct 2020 04:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5vB7we2XKqW80NLTaHBwE7SPtmKIWwX83NH/INFhZvo=; b=g+BrlOVx6EF4Qrnn5xB3BapleG
 8zMbXH2YgLZFUcNpAMM6meoyumEYULL7E2S5Pk3S3MBWNNiYpxopBZhK/SDgmBsbof30ObIvcOWi5
 q7aE8jS+UwoK1xgAR5YRiOLJ0SiQwXVKIrbxV40Dob43FKOtTFesROSII0EFrUr7+FCU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5vB7we2XKqW80NLTaHBwE7SPtmKIWwX83NH/INFhZvo=; b=a56ouAd9Zo+IHUabJ3pKdT5NLt
 et6t2L7kPlrRSnyHtXa9B37bJlR/HPjXgNlCzqc7uMv80LVXWe+BgmXgUW3YsHEO/XeTZT0021hlH
 n9BeuvR1n1KoLo59U+UqXJVUn70NZ/HohnFUct1ZGWJjNQztbd0lWv4LO/N2oJPb+pV0=;
Received: from mail-eopbgr70139.outbound.protection.outlook.com
 ([40.107.7.139] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPIDu-002uSP-LO
 for tipc-discussion@lists.sourceforge.net; Mon, 05 Oct 2020 04:35:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7KlVveijcOpjuFi/Utwfjls8K8SMhimFPWTsyHuAH5Ylhy3DebIqDQSiPUTXlRJI0jQKqhEr0ZFjAkMq7LGn13ObN6Qb/FQIs6hI1Dtllz3wvo598fcA6PAyljHsjrnlZcGIPLwFbHDKqg40NPGU8sJnSoOT7G/0LzAWG0GbSiOumbZC4C/ENtKGwBoNgusmVe8l5NhkzevoMXW1p2fH1+2dTNgJaKLc7eCT2hbMLQT2ueecIZYbDOH8MGV5lu+2tz7QvMQwBf+5+dV91begVn6379aVmycYjkQ+3+hGTW8c7jg3a9PR9+TNY24W8JCZykJOL+Fe7dkYtPVdxqL1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5vB7we2XKqW80NLTaHBwE7SPtmKIWwX83NH/INFhZvo=;
 b=IofcZWA+N4rvC4vR5C2WmsxF2RY6YaXO/nRnCSHRDt77U5ZIVrTwh2l80nLmmTHvqIdfogA6zXubBZW9tbeRGH1FxrRmVf00o9IkdpoZqlWD7IZcOpH4gVL6kr4ZY7tkOsFpQwFV5oqnn5XBv+kRK6w2/s2pVIfRF58IgXhSjAM1pLTxxSEOExcx8183citFikhCncrfhPWzCW8VaHQm3abQOxhJKXQk5XvidxzkI8Lmbf1905U1DPIYAf4iE7n7e8oUoVTvnDjsumdWVmGKnQncFzjP8kA0Vvy/y7nWqWKEyq7oobFOo+zArHd54wq+dl91rZAJzrQ0qHkgP2gygA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5vB7we2XKqW80NLTaHBwE7SPtmKIWwX83NH/INFhZvo=;
 b=PlZGMmWZoZ6+rlp0caBjdhCg2kUviM5BYIHn4ovDAiDPnLoohSEpbh9O9KjkWAw1tt+iaJCmrKVypmPYAi+zijnx15BlAPovtlvXkNc1y0nDr3ZhmlasdLGePEQS32+Jp078PFX3gZfpOFm85uZeviuX50HUP7P06zfMB3MuaMs=
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com (2603:10a6:6:4d::19) by
 DB7PR05MB5787.eurprd05.prod.outlook.com (2603:10a6:10:86::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.32; Mon, 5 Oct 2020 04:35:31 +0000
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::c027:d79c:6e8c:2e8c]) by DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::c027:d79c:6e8c:2e8c%5]) with mapi id 15.20.3433.038; Mon, 5 Oct 2020
 04:35:31 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, tipc-dek <tipc-dek@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
Thread-Topic: tipc.py
Thread-Index: AQHWmD2qtJVVZaOSQkW73jj9Jb3Aj6mDoJJQgAFOSgCAA4GmgA==
Date: Mon, 5 Oct 2020 04:35:31 +0000
Message-ID: <DB6PR05MB459853F6B8F88B5661F2B678F10C0@DB6PR05MB4598.eurprd05.prod.outlook.com>
References: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
 <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <eb659d57-3aa4-226e-0e06-0a52db96df36@redhat.com>
In-Reply-To: <eb659d57-3aa4-226e-0e06-0a52db96df36@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0c5c44c-3c9e-4aba-5459-08d868e817e4
x-ms-traffictypediagnostic: DB7PR05MB5787:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR05MB5787CEC2BDB19ACDF883900DF10C0@DB7PR05MB5787.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OHJS2z3Xj7zEhcMfAzF4viPRYiwXyPYA+FNcBTrV2ZqvEZMbeH9MDdN2P6ORwm2CiLxBDsR3UKuMUpWhW6hEWgzwC7+0e0BgtNXBJgzRIpPdkHZxXI1f3PThsdR2wxxSc0cmVY2FkVJ8o1Sm26Sj7epGr4M/NLsxJTDxGLcCfHaSMc/mmrU6dSWh5B5KQg3WF2YnDqGCKjDwTzI+I0mUWEk5uQifZElNouk1qBQ6OyyqvlXJo8VBNTXjFO7b5+fT6Ve20QEaBkyzWRyAv6g5fMObfeo7UtoVS0AZvMOacb8F6SYIxV1nsF8VFrgM2S3MHYP0f9NAQpY629jfxiaYdXaZ43DlWlixG42/pQOxThuI6YdklbmheLCh9ewSW/p9au4D4OxagmgLqCv+SQZcVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR05MB4598.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(136003)(396003)(376002)(346002)(366004)(26005)(53546011)(6506007)(8676002)(966005)(83380400001)(8936002)(83080400001)(316002)(2906002)(71200400001)(110136005)(86362001)(55016002)(3480700007)(478600001)(186003)(66446008)(64756008)(66556008)(66476007)(7696005)(66946007)(9686003)(5660300002)(76116006)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: p89bd+96vrLYZrcD4hxhW0vS7w4f/rDV4RjpUqDycgQhiZDvg5lc11CsGB7ut0dbJVxQXEbJp0889ZJrIWP83TDvYOwv8HlL7YHCabDgaakXKTlwt0w2r0vdMMWcfeL1Tl8/V316xqe9s08Zfc42QBrES2XjiSjuFxuG0UiLQWopSHv2ti6OQSF5E8R6oo9ZPRa2rTdD4CWsdW1D5hHBvY8hAuB56ZzPy7+L0pqA5fj3zFJRkIaIabl+tzTdwWrQkjKboDKpplKwFRIzZkjYgsXC5j9jcH56rpYV9qtMGWr0ChU70BkU2KFQO/Mbcc/0ftWJBCk2vmRuujS+rCPXV2fqDEH2IYQSey+5pzO9Uxdw+1eucXbtHi+6chdEFejnzMguvlAv6zsUXGxn0zMUKaChqUJICnHww8JtqsrX5QqpGe/6m6Ru7DQF9vST0L13pxYz/Mrq6K3bXSOmxOYU1Zes+uQrC2UtVBMh0+UjHFeNwCJifWX1pymIrKesaasM33faKxNolo8KOjPMcVlgISVhLY/+bxPZaPkRYFHP2jjPp7ifSgbyZEic6PYCCaOKisplo1itXVqF/hs0mplqgpDEpoUa5/KDAGOTvHy/illhKo+1fKUefaqPJsn4lj55kuu+ElD7M418nUMZHJ/mjA==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR05MB4598.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0c5c44c-3c9e-4aba-5459-08d868e817e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2020 04:35:31.4358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p0Q/F7V87p27kyq0/rtG9loWmdlJmYwlG6Dv5LaB+Mh39FCs/gxyz8KhLQbp4ryQd5LASmFMUp9cVmvxj4wX5j6Gnp3mhRKDL9eLKIIw+2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB5787
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.139 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.139 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPIDu-002uSP-LO
Subject: Re: [tipc-discussion] tipc.py
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgSm9uLA0KDQpJIHdpbGwgbWFrZSBhbiBlZmZvcnQgb24gdGhpcy4gRG8geW91IHRoaW5rIHdl
IG5lZWQgdG8ga2VlcCB0aGVzZSBBUElzIGNvbXBhdGliaWxpdHkgd29yayB3aXRoIFB5dGhvbjIg
b3IgY29tcGxldGVseSByZW1vdmUgb3V0Pw0KDQpSZWdhcmRzLA0KSG9hbmcNCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4N
Cj4gU2VudDogU2F0dXJkYXksIE9jdG9iZXIgMywgMjAyMCA1OjU5IEFNDQo+IFRvOiBIb2FuZyBI
dXUgTGUgPGhvYW5nLmgubGVAZGVrdGVjaC5jb20uYXU+OyB0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0OyB0aXBjLWRlayA8dGlwYy1kZWtAZGVrdGVjaC5jb20uYXU+OyBYaW4N
Cj4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+OyBZaW5nIFh1ZSA8eWluZy54dWVAd2luZHJp
dmVyLmNvbT4NCj4gU3ViamVjdDogUmU6IHRpcGMucHkNCj4gDQo+IA0KPiANCj4gT24gMTAvMS8y
MCAxMTowNCBQTSwgSG9hbmcgSHV1IExlIHdyb3RlOg0KPiA+IEhpIEpvbiwNCj4gPg0KPiA+IEkn
dmUgZG9uZSB0aGlzIGEgbG9uZyB0aW1lIGFnbzoNCj4gPiA1MDU3ZjhiYjRkZTAgdGlwY3V0aWxz
OiBpbnRyb2R1Y2UgcHl0aG9uIGFwaQ0KPiA+DQo+ID4gQmFzaWNhbGx5LCBpdCB3b3JrcyB3aXRo
IFB5dGhvbiAyLg0KPiBEbyB5b3UgdGhpbmsgaXQgeW91IHdvdWxkIGhhdmUgdGltZSB0byBkbyB0
aGlzIGZvciBQeXRob24gMz8NCj4gUHl0aG9uIDIgaXMgcHJhY3RpY2FsbHkgZGVhZCBub3csIGFz
IHdlIGFsbCBrbm93Lg0KPiANCj4gUmVnYXJkcw0KPiAvLy9qb24NCj4gPg0KPiA+IFJlZ2FyZHMs
DQo+ID4gSG9hbmcNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTog
Sm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4NCj4gPj4gU2VudDogRnJpZGF5LCBPY3RvYmVy
IDIsIDIwMjAgNDo1NiBBTQ0KPiA+PiBUbzogdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldDsgdGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1PjsgWGluIExvbmcgPGx1
Y2llbi54aW5AZ21haWwuY29tPjsgWWluZyBYdWUNCj4gPj4gPHlpbmcueHVlQHdpbmRyaXZlci5j
b20+DQo+ID4+IFN1YmplY3Q6IHRpcGMucHkNCj4gPj4NCj4gPj4gSSBhbSB1cGRhdGluZyB0aGUg
cHJvZ3JhbW1lcidzIG1hbnVhbCwgYW5kIHJlYWxpemVkIHRoYXQgdGhlIFB5dGhvbiBBUEkNCj4g
Pj4gaXMgbWlzc2luZy4NCj4gPj4gU2luY2UgdGhlcmUgYXJlIHNvIG1hbnkgcHJvZ3JhbW1lcnMg
a25vd2luZyBQeXRob24gbm93YWRheXMsIGJ1dCBub3QgQywNCj4gPj4gSSB0aGluayBpdCB3b3Vs
ZA0KPiA+PiBiZSB2ZXJ5IHVzZWZ1bCB0byBoYXZlIHRoaXMgQVBJIGluIHRoZSBtYW51YWwsIHNv
IHRob3NlIHByb2dyYW1tZXJzIGNhbg0KPiA+PiBnZXQgYSBmZWVsaW5nDQo+ID4+IGZvciBob3cg
c2ltcGxlIGl0IHRvIHVzZSBUSVBDLg0KPiA+Pg0KPiA+PiBUdW9uZyBzdGFydGVkIGRldmVsb3Bt
ZW50IG9mIGFuIEFQSSBiYXNlZCBvbiB0aGUgbGlidGlwYyBDLUFQSSwgYnV0IGl0DQo+ID4+IHNl
ZW1zIHRvIG1lIGl0IHdhcyBuZXZlciBmaW5pc2hlZC4NCj4gPj4gSG93ZXZlciwgUHl0aG9uIGRv
ZXMgc2luY2UgYSBsb25nIHRpbWUgaGF2ZSBuYXRpdmUgVElQQyBzdXBwb3J0LA0KPiA+PiBhbGxl
Z2VkbHkgYm90aCBpbiBQeXRob24gMiBhbmQgUHl0b24gMy4NCj4gPj4gSSBoYWQgbmV2ZXIgc2Vl
biB0aGF0IEFQSSB1bnRpbCBub3csIGJ1dCBhZnRlciBzb21lIGdvb2dsaW5nIEkgY2FtZSBvdmVy
DQo+ID4+IHRoZSBmb2xsb3dpbmcgbGluaywgdGhhdCBzZWVtcyB0byBjb250YWluDQo+ID4+IHRo
YXQgbmF0aXZlIGltcGxlbWVuYXRpb246DQo+ID4+DQo+ID4+IGh0dHBzOi8vYmxpdGlyaS5jb20u
YXIvcC9weXRpcGMvDQo+ID4+DQo+ID4+IEkgd29uZGVyIGlmIGFueWJvZHkgaGFzIHRoZSB0aW1l
IHRvIHRyeSB0aGlzIG9uZSwgYW5kIHZlcmlmeSwgdXNpbmcgdGhlDQo+ID4+IGV4YW1wbGVzLCB0
aGF0IGl0IHJlYWxseSB3b3Jrcy4NCj4gPj4gSXQgd291bGQgYmUgZW1iYXJyYXNzaW5nIHRvIGFk
ZCB0aGlzIHRvIHRoZSBtYW51YWwgaWYgaXQgdHVybnMgb3V0IGl0DQo+ID4+IGRvZXNuJ3Qgd29y
ay4NCj4gPj4NCj4gPj4gUmVnYXJkcw0KPiA+PiAvLy9qb24NCj4gPj4NCj4gPj4gUFMuIERvZXMg
YW55Ym9keSB2b2x1bnRlZXIgdG8gYmUgYmVjb21lIGNvLW1haW50YWluZXIgb2YgdGhlIGhvbWUg
cGFnZQ0KPiA+PiBhbmQgcHJvamVjdCBwYWdlDQo+ID4+ICAgwqDCoMKgwqDCoCBhdCBTb3VyY2VG
b3JnZT8gSSB0aGluayB3ZSBzaG91bGQgZXZlbiBjb25zaWRlciBtb3ZpbmcgaXQgdG8NCj4gPj4g
R2l0TGFiIG9yIEdpdEh1Yi4NCj4gPj4gICDCoMKgwqDCoMKgIFNpbmNlIHdlIGhhdmUgb3VyIG93
biBkb21haW4gKHRpcGMuaW8pIHRoYXQgY291bGQgZWFzaWx5IGJlDQo+ID4+IHJlLXN0ZWVyZWQg
dG8gYSBkaWZmZXJlbnQNCj4gPj4gICDCoMKgwqDCoMKgIGhvc3Qgc3lzdGVtLg0KDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
