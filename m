Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 922E2287226
	for <lists+tipc-discussion@lfdr.de>; Thu,  8 Oct 2020 12:01:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQSjs-0001XV-Q3; Thu, 08 Oct 2020 10:01:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kQSjq-0001XM-Rp
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 10:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a7+BQhIONMdthqww30fVS+zomdqWNgMU8cDb4erq+UM=; b=BjUuV3OCFiBB1eKkgmPov+crSW
 gGM3tfLkmelnAjgc2E9tpH2yrPkbBMGACdeNaEW5JDoCXSjedcpPiKNtOlFQ2MsFIvbIJK4Ni/2CI
 AJ+uIYvJW+lOH0EdMkTsrScxmhtV+v6LMWMHn+7lAihrltQywajeA5tBNsQAXMsFh+h4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a7+BQhIONMdthqww30fVS+zomdqWNgMU8cDb4erq+UM=; b=K/6+Zbb4pgPFur2Edn5M4rUMPV
 Ok6zBtWV4nMyiy5WAhDQLEJdGBNK9VFe71AvUi0H/WZpUsCCdIIjnZEjJz9cPbNN1eMGIfqezapYz
 W0vP1DVOg3KQ66o2XhSc2Nof+rrvV9/KBHy1n0kKywJoMUnXhsdVD0ywHJvCxvHvhB5c=;
Received: from mail-eopbgr10110.outbound.protection.outlook.com
 ([40.107.1.110] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQSjZ-0030eG-Rp
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 10:01:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pf1xDpd0Ow3syW22a0e6oSuvB6rA5dlhMpYiEDyoGs9oKRzIx4ApiQLuIouO0jqBuKmY+tp0daqNIDQwJZfk5n8KlrRlxBe659LtOohuV6eC+jiQpCIvqooAu0kKnN1MdkJnfep/XuUNQKuSZs09dSzlf9fvXPri+nP9Awjfpz+AFNh7y31Fc/cseHULKxN+1v4C6BSI0DnpILrh3yXNhZBuZLbIuFiWu8QxjHRGUG5VdmpyVj9A8RnD1U/YauuduZREHDRauTGZ8OAMRH55q7+/cG+veWlTQO6Qp1I4iQWTBfQI61jpvohHhHA5iImcP27Bba5Q4i7fg/mJj+DqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a7+BQhIONMdthqww30fVS+zomdqWNgMU8cDb4erq+UM=;
 b=CGDkCBpgMbCd+MQ0cnHAvy6xfdnVB+RdC70cPl0VdWfFLJ3FjGbyBpciQ7IEcYolk2k1Kv8deKqMPfDCuY6hrNAUrlMUFFFOOy68dm/7HlsW0QHjB2/jpIreQw0Z2JEwNTRgWHbjjzkBv+SvVT0w8K28fmoPX5jxtn43mD1cTpq/L9nXp+Bn2F5s0iwWjdY+wAl69Clsnep64aw38R+fRRHwsCfU4ItXFreSeAz9/QlUutEw+kOORSbwjCfBKolORsyki8no0J6nfZRw6g89/flz4eDMO4Cr+6/eGbOWScpMSH5EVCOxECmAKQKx+tTm8NKPIhFbUOuw5B+QlnN9uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a7+BQhIONMdthqww30fVS+zomdqWNgMU8cDb4erq+UM=;
 b=CtaUve5rcSrvyZ1tIkBlkJkhfwZ0szgoUoMpK0EPmd2vDxOeQDNVGK5Mq4bFbtp7amgQDh5OuJhfoof0oF9JYg7QdY/xopMsxfpEuTdZw9oX0xCN07vRdx2g11ln2XF+F8GHioYTL5ji9RKaBwpI+pIkrfsdD6rzom1He8NJzac=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB7085.eurprd05.prod.outlook.com (2603:10a6:800:18e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Thu, 8 Oct
 2020 10:01:03 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3433.045; Thu, 8 Oct 2020
 10:01:03 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Xin Long <lucien.xin@gmail.com>,
 Ying Xue <ying.xue@windriver.com>
Thread-Topic: tipc.py
Thread-Index: AQHWmD2qtJVVZaOSQkW73jj9Jb3Aj6mDoJJQgAFOSgCAA4GmgIAAu66AgARWnDA=
Date: Thu, 8 Oct 2020 10:01:03 +0000
Message-ID: <VI1PR05MB46050C966FDFDC44D2B2112CF10B0@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
 <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <eb659d57-3aa4-226e-0e06-0a52db96df36@redhat.com>
 <DB6PR05MB459853F6B8F88B5661F2B678F10C0@DB6PR05MB4598.eurprd05.prod.outlook.com>
 <a173e577-ce85-a936-007c-8e610427ebfa@redhat.com>
In-Reply-To: <a173e577-ce85-a936-007c-8e610427ebfa@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [113.20.114.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d848020-fc36-41d9-8479-08d86b71113b
x-ms-traffictypediagnostic: VI1PR05MB7085:
x-microsoft-antispam-prvs: <VI1PR05MB7085BFB20A21588B9980AFE1F10B0@VI1PR05MB7085.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FYzqJ4t0nKHF12oYGhrjXW/8pkOhpa4hXsOWmDe1CQI7wmGcIDKSvJWtLRNoW2DjsNBsI16wA0OHIPiDdPDIDfuzACXD/TP+zHRbj+rnWhx4P0axQhRPGX6IEln2rBU8Dm8ZRBIStHosWyMndLFmE/ILiavAACuXYSj5FX0NXLo8S2CcHlSn60ki1HEO627GJFeZgF3bFv6Jf+i1e9jB2cUu214IdVuaXcIuTvkzeYAVGAJxDAYQlk/5dM6cFkTKU4WmOIykrZPnjiv8XUNq11ymkMC6XPtF2F/K56PMfzHqW49QkOsJ5sMDc4oJyntjcaJFIpamlEjULbX9e/d7SJibhBbPlyPHuyGvpUMzonVAxeugLDndQdcMyper1qJub2mi15He0Ppt7xqlL0YLQQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(136003)(346002)(39850400004)(9686003)(55016002)(8936002)(64756008)(66446008)(83080400001)(83380400001)(966005)(53546011)(3480700007)(86362001)(26005)(6506007)(478600001)(33656002)(2906002)(52536014)(71200400001)(66476007)(186003)(66556008)(76116006)(66946007)(8676002)(7696005)(5660300002)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: w7qE28AuTKogVlZZDREqdz2OynDDHTJH7myCQ3zmGUIBWZNYkdVJtGXTrlBo4q5pQV6vEXzbybOF5vqDEt+bvKsvgxRpEteJa2Z+wrylBU+qmGW24P6AI1sg9PZzUloFVAok2P4R5+q4lK8OlrWiel0sBaqqj/iJsyaz1pQrBiEq6kzGyLRZtlDh8FeO2doX7YVzA2OVrVzCStFvSAQsGCR+QG20NwbUGbxRp8H8bCa+7vDOzdDnnB+bH8F21ITQhKAmuq9DuDHQZFZdCXCwy9fS1BlZS/VjYakTuZVkni6EJkLFBbi/nBQVszosq6k83uq6XP7swk35IA0ghDKteJxJUA/0cwGviWA2ImnV8IXaivPendap+uvhu3Hte6FAh0EaFVMwMmVmkNlcXCcnJ3KQ+JhKtoDtN/792p5mUCpJgh0CaAXKYAgZlFRQf2MFpDYYgWc0ahLhBrfZtmveBq8bFolBv/TT8M/gX/6jSnVa2xaNael+9AaMzEpyAs12zvXYVLG7TQGjycxhg+sPEqXTD1ukYijEMjLyHkkze01Ydqg2misvm7zToMqaIyYWH4TN/nDDyu+ITZaUFzUsMNHB6DgTAXzTC1InpAmBkp7WrvvablIPN1Gb/VxmsOzXzsv/X9cKFMrlo+w7UJtw+A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d848020-fc36-41d9-8479-08d86b71113b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2020 10:01:03.6015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PumqCBUKCuEsewUQM941gYlLQTmEiffcPk8GRjnCoCG0wn23l3XRxtRbGyfQAGpWvISRAaWKrwr+pb7GbWdSReEeB0VU8qlOGe6EHXO3SzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB7085
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.110 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.1.110 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQSjZ-0030eG-Rp
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

SGkgSm9uLA0KDQpJJ3ZlIGRvbmUgYXQ6DQpodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wL3RpcGMv
dGlwY3V0aWxzL21lcmdlLXJlcXVlc3RzLzgvDQoNClBsZWFzZSB0YWtlIHRpbWUgdG8gcmV2aWV3
IGl0Lg0KDQpSZWdhcmRzLA0KSG9hbmcNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4NCj4gU2VudDogTW9uZGF5LCBPY3Rv
YmVyIDUsIDIwMjAgMTA6NDQgUE0NCj4gVG86IEhvYW5nIEh1dSBMZSA8aG9hbmcuaC5sZUBkZWt0
ZWNoLmNvbS5hdT47IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7IHRpcGMt
ZGVrIDx0aXBjLWRla0BkZWt0ZWNoLmNvbS5hdT47IFhpbg0KPiBMb25nIDxsdWNpZW4ueGluQGdt
YWlsLmNvbT47IFlpbmcgWHVlIDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPg0KPiBTdWJqZWN0OiBS
ZTogdGlwYy5weQ0KPiANCj4gDQo+IA0KPiBPbiAxMC81LzIwIDEyOjM1IEFNLCBIb2FuZyBIdXUg
TGUgd3JvdGU6DQo+ID4gSGkgSm9uLA0KPiA+DQo+ID4gSSB3aWxsIG1ha2UgYW4gZWZmb3J0IG9u
IHRoaXMuIERvIHlvdSB0aGluayB3ZSBuZWVkIHRvIGtlZXAgdGhlc2UgQVBJcyBjb21wYXRpYmls
aXR5IHdvcmsgd2l0aCBQeXRob24yIG9yIGNvbXBsZXRlbHkgcmVtb3ZlIG91dD8NCj4gR3JlYXQh
IFRvIG1lIHlvdSBjYW4ganVzdCB1cGRhdGUgdGhlIGN1cnJlbnQgY29kZSBhbmQgZG9uJ3Qgd29y
cnkgYWJvdXQNCj4gY29tcGF0aWJpbGl0eS4NCj4gSWYgYW55Ym9keSBoYXMgdXNlZCB0aGUgY3Vy
cmVudCBtb2R1bGUgdGhleSB3aWxsIGhhdmUgdGhlaXIgb3duIGNvcHksDQo+IGFuZCBJIGNhbm5v
dCBpbWFnaW5lIHRoYXQgYW55Ym9keSB3aWxsIHdyaXRlIG5ldyBwcm9ncmFtcyBmb3IgUHV0aG9u
IDINCj4gYnkgbm93Lg0KPiANCj4gUmVnYXJkcw0KPiAvLy9qb24NCj4gDQo+ID4NCj4gPiBSZWdh
cmRzLA0KPiA+IEhvYW5nDQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZy
b206IEpvbiBNYWxveSA8am1hbG95QHJlZGhhdC5jb20+DQo+ID4+IFNlbnQ6IFNhdHVyZGF5LCBP
Y3RvYmVyIDMsIDIwMjAgNTo1OSBBTQ0KPiA+PiBUbzogSG9hbmcgSHV1IExlIDxob2FuZy5oLmxl
QGRla3RlY2guY29tLmF1PjsgdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsg
dGlwYy1kZWsgPHRpcGMtZGVrQGRla3RlY2guY29tLmF1PjsNCj4gWGluDQo+ID4+IExvbmcgPGx1
Y2llbi54aW5AZ21haWwuY29tPjsgWWluZyBYdWUgPHlpbmcueHVlQHdpbmRyaXZlci5jb20+DQo+
ID4+IFN1YmplY3Q6IFJlOiB0aXBjLnB5DQo+ID4+DQo+ID4+DQo+ID4+DQo+ID4+IE9uIDEwLzEv
MjAgMTE6MDQgUE0sIEhvYW5nIEh1dSBMZSB3cm90ZToNCj4gPj4+IEhpIEpvbiwNCj4gPj4+DQo+
ID4+PiBJJ3ZlIGRvbmUgdGhpcyBhIGxvbmcgdGltZSBhZ286DQo+ID4+PiA1MDU3ZjhiYjRkZTAg
dGlwY3V0aWxzOiBpbnRyb2R1Y2UgcHl0aG9uIGFwaQ0KPiA+Pj4NCj4gPj4+IEJhc2ljYWxseSwg
aXQgd29ya3Mgd2l0aCBQeXRob24gMi4NCj4gPj4gRG8geW91IHRoaW5rIGl0IHlvdSB3b3VsZCBo
YXZlIHRpbWUgdG8gZG8gdGhpcyBmb3IgUHl0aG9uIDM/DQo+ID4+IFB5dGhvbiAyIGlzIHByYWN0
aWNhbGx5IGRlYWQgbm93LCBhcyB3ZSBhbGwga25vdy4NCj4gPj4NCj4gPj4gUmVnYXJkcw0KPiA+
PiAvLy9qb24NCj4gPj4+IFJlZ2FyZHMsDQo+ID4+PiBIb2FuZw0KPiA+Pj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+ID4+Pj4gRnJvbTogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNv
bT4NCj4gPj4+PiBTZW50OiBGcmlkYXksIE9jdG9iZXIgMiwgMjAyMCA0OjU2IEFNDQo+ID4+Pj4g
VG86IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7IHRpcGMtZGVrIDx0aXBj
LWRla0BkZWt0ZWNoLmNvbS5hdT47IFhpbiBMb25nIDxsdWNpZW4ueGluQGdtYWlsLmNvbT47IFlp
bmcgWHVlDQo+ID4+Pj4gPHlpbmcueHVlQHdpbmRyaXZlci5jb20+DQo+ID4+Pj4gU3ViamVjdDog
dGlwYy5weQ0KPiA+Pj4+DQo+ID4+Pj4gSSBhbSB1cGRhdGluZyB0aGUgcHJvZ3JhbW1lcidzIG1h
bnVhbCwgYW5kIHJlYWxpemVkIHRoYXQgdGhlIFB5dGhvbiBBUEkNCj4gPj4+PiBpcyBtaXNzaW5n
Lg0KPiA+Pj4+IFNpbmNlIHRoZXJlIGFyZSBzbyBtYW55IHByb2dyYW1tZXJzIGtub3dpbmcgUHl0
aG9uIG5vd2FkYXlzLCBidXQgbm90IEMsDQo+ID4+Pj4gSSB0aGluayBpdCB3b3VsZA0KPiA+Pj4+
IGJlIHZlcnkgdXNlZnVsIHRvIGhhdmUgdGhpcyBBUEkgaW4gdGhlIG1hbnVhbCwgc28gdGhvc2Ug
cHJvZ3JhbW1lcnMgY2FuDQo+ID4+Pj4gZ2V0IGEgZmVlbGluZw0KPiA+Pj4+IGZvciBob3cgc2lt
cGxlIGl0IHRvIHVzZSBUSVBDLg0KPiA+Pj4+DQo+ID4+Pj4gVHVvbmcgc3RhcnRlZCBkZXZlbG9w
bWVudCBvZiBhbiBBUEkgYmFzZWQgb24gdGhlIGxpYnRpcGMgQy1BUEksIGJ1dCBpdA0KPiA+Pj4+
IHNlZW1zIHRvIG1lIGl0IHdhcyBuZXZlciBmaW5pc2hlZC4NCj4gPj4+PiBIb3dldmVyLCBQeXRo
b24gZG9lcyBzaW5jZSBhIGxvbmcgdGltZSBoYXZlIG5hdGl2ZSBUSVBDIHN1cHBvcnQsDQo+ID4+
Pj4gYWxsZWdlZGx5IGJvdGggaW4gUHl0aG9uIDIgYW5kIFB5dG9uIDMuDQo+ID4+Pj4gSSBoYWQg
bmV2ZXIgc2VlbiB0aGF0IEFQSSB1bnRpbCBub3csIGJ1dCBhZnRlciBzb21lIGdvb2dsaW5nIEkg
Y2FtZSBvdmVyDQo+ID4+Pj4gdGhlIGZvbGxvd2luZyBsaW5rLCB0aGF0IHNlZW1zIHRvIGNvbnRh
aW4NCj4gPj4+PiB0aGF0IG5hdGl2ZSBpbXBsZW1lbmF0aW9uOg0KPiA+Pj4+DQo+ID4+Pj4gaHR0
cHM6Ly9ibGl0aXJpLmNvbS5hci9wL3B5dGlwYy8NCj4gPj4+Pg0KPiA+Pj4+IEkgd29uZGVyIGlm
IGFueWJvZHkgaGFzIHRoZSB0aW1lIHRvIHRyeSB0aGlzIG9uZSwgYW5kIHZlcmlmeSwgdXNpbmcg
dGhlDQo+ID4+Pj4gZXhhbXBsZXMsIHRoYXQgaXQgcmVhbGx5IHdvcmtzLg0KPiA+Pj4+IEl0IHdv
dWxkIGJlIGVtYmFycmFzc2luZyB0byBhZGQgdGhpcyB0byB0aGUgbWFudWFsIGlmIGl0IHR1cm5z
IG91dCBpdA0KPiA+Pj4+IGRvZXNuJ3Qgd29yay4NCj4gPj4+Pg0KPiA+Pj4+IFJlZ2FyZHMNCj4g
Pj4+PiAvLy9qb24NCj4gPj4+Pg0KPiA+Pj4+IFBTLiBEb2VzIGFueWJvZHkgdm9sdW50ZWVyIHRv
IGJlIGJlY29tZSBjby1tYWludGFpbmVyIG9mIHRoZSBob21lIHBhZ2UNCj4gPj4+PiBhbmQgcHJv
amVjdCBwYWdlDQo+ID4+Pj4gICAgwqDCoMKgwqDCoCBhdCBTb3VyY2VGb3JnZT8gSSB0aGluayB3
ZSBzaG91bGQgZXZlbiBjb25zaWRlciBtb3ZpbmcgaXQgdG8NCj4gPj4+PiBHaXRMYWIgb3IgR2l0
SHViLg0KPiA+Pj4+ICAgIMKgwqDCoMKgwqAgU2luY2Ugd2UgaGF2ZSBvdXIgb3duIGRvbWFpbiAo
dGlwYy5pbykgdGhhdCBjb3VsZCBlYXNpbHkgYmUNCj4gPj4+PiByZS1zdGVlcmVkIHRvIGEgZGlm
ZmVyZW50DQo+ID4+Pj4gICAgwqDCoMKgwqDCoCBob3N0IHN5c3RlbS4NCg0KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
