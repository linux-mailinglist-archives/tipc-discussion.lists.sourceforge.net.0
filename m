Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 548B869C59
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 Jul 2019 22:09:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hn7Hd-0000OE-T2; Mon, 15 Jul 2019 20:09:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hn7Hc-0000O3-B7
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Jul 2019 20:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nyr23RGTXhQcvybKM8rAHsIMJy3WvN6X2wLPcIkl4w4=; b=i3h7NKK80GIK32Za/QtgftL4sG
 g/X8DeDyVStQC9gGGRI3nztZO7XIc6ekxxH/uMnYPdqREuuerE6QoM5qL8ABCKxFY/wBoGioHMnjn
 mdI50YMVyf7XzymHygkqbn9LuZRLKSCsLHFvEMquuR8ZDJGI3Gba8CelpfCmilo6fhUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nyr23RGTXhQcvybKM8rAHsIMJy3WvN6X2wLPcIkl4w4=; b=QlSMEawsrik18RbxMCqQdxunm2
 0k9bHJLSv5+gf7laD3roamfO3HRdtIOkjvRTDWt3KyHOzXir8jtvKNKGNnAYdmsVUzaS8yyL3DuC0
 vssIMj1pkieOKwfRXCDcehMg1Ye/e43N3mXGe3WXPIxvbIYNRQMC0I3J7lJ8aWKsy5fU=;
Received: from mail-eopbgr750085.outbound.protection.outlook.com
 ([40.107.75.85] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hn7HV-002hD5-AV
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Jul 2019 20:09:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=js6rS6PF5UzWWX243yHgiIvogfjpuocgufN1RbygialtoCABmBzry7XyrQvCnmobhjIFZUYgWLH/rVPh+m6oFLPl092xkvY2FePaYhQLbb7gnFpaH8aiXkZWosJWVDW+T2P0e3cUc3gr+WyP4BF0Bo/Amemhdh8+xbfeEsMrKXPQmEV14sSnr6L5rwndbvxdTLDe/GticrIPXDBEzrsv2X53FU/brdZEG60FtdREMHd0ubHU5M0fCxAO5jYE74WSeUB8g4+hbUzJWKE0u4VeMo9N5bMZdARurdzh9EO8szDskNiwx4H0jbtnI1qjAXP8+StteW6Rx+mg66sSgb2HlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nyr23RGTXhQcvybKM8rAHsIMJy3WvN6X2wLPcIkl4w4=;
 b=bz6ALzladskEgETiXvJDkoYWtfz4Os7hcFx2kOvr2j2AFOPISGQo9yUqLteZzcEwHsM9C+52ciFDlf5aduqt0zIw613gWKTHbShKI37TrbXAGQo4IwENdolZC7WF1R1QF9E1H+hK98FhjflZCwWiD/KQL1oun76ZRYp1mlwmrLi3N5CuFfWWPvREe2wr/1FeG/eY9hJki8ifyZlI2gjgYpy8JPNVwZbriYnCIQdTw2uG7FIEmmVt6EP/QnkSVUFEXhunP4IeQY/+cyrm2Rzrd1tPK1N55RrGaI549USWHowU0M+e3bDtnyiQXK6C1Wo6HZloN1rZnNaVZQjXx5pqIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nyr23RGTXhQcvybKM8rAHsIMJy3WvN6X2wLPcIkl4w4=;
 b=q4i0MPRN2kokp3ZH4zlgx+7VfHBctBPhHgg135Uaen7EcYZ9dbHRkMDnnUFH+oeZAdCemCo80Bz34piN2SgkWNINUyYKLBpzbGmSgcfutgwm3sKMSLeDb4bCWaXeg0Fmdq8T64SNKBgpNgrC7Pd2tqEp0h+UpC8nnTsRnBZUyn8=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3702.namprd15.prod.outlook.com (52.132.230.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 19:36:05 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 19:36:05 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Mahesh Kumar <lmk_in@yahoo.com>, Ying Xue <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion] TIPC ; config trouble ; help request
Thread-Index: AQHVOS9jxbAvyOPOHkqT/1VB5I1YJabLcXkAgABl0ACAADU1UA==
Date: Mon, 15 Jul 2019 19:36:05 +0000
Message-ID: <CH2PR15MB3575AE547C8E8B78F9789A329ACF0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1593727072.553762.1562990335581.ref@mail.yahoo.com>
 <1593727072.553762.1562990335581@mail.yahoo.com>
 <df6091ec-b1db-659f-b2ed-eb18ea40c111@windriver.com>
 <972611549.1456135.1563205744665@mail.yahoo.com>
In-Reply-To: <972611549.1456135.1563205744665@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bceb247f-1117-430b-5b1e-08d7095badc3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR15MB3702; 
x-ms-traffictypediagnostic: CH2PR15MB3702:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR15MB37026E0A10B53ECB8A5DF3DE9ACF0@CH2PR15MB3702.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(136003)(396003)(346002)(189003)(13464003)(199004)(76176011)(68736007)(26005)(6506007)(53546011)(86362001)(6246003)(6436002)(316002)(7696005)(110136005)(229853002)(74316002)(7736002)(102836004)(305945005)(14454004)(71190400001)(71200400001)(64756008)(66476007)(66556008)(66446008)(2906002)(476003)(8936002)(66946007)(81166006)(99286004)(11346002)(81156014)(486006)(76116006)(446003)(5660300002)(8676002)(53936002)(256004)(25786009)(966005)(6116002)(478600001)(14444005)(4326008)(186003)(55016002)(52536014)(44832011)(3846002)(6306002)(66066001)(9686003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3702;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mfuqVaxGdMKBB0R2j1bPLTAQnzp+FXfoDB8GQoMgmCEa2pn/zcBexgYA3jVdm5bocQhTK8Rk9lnStPmLRKzrxrcsNBdUjg/JQ8DQ1VBXclWByiLisSTtqP4embubDAGrqDHTQxE8r+jdTKpFbumHS2ZD5BNOMk2Ajmtz6Mc9pa++Ha14NnlJ8dq9+ai1NI/gSJ9nvk2MM0+K1fmQKW/jUA5evrYGtyjrGks91mqIUPp5kmSlqhzbhv+UxjRDNzbnaZzB812k/koFuuFkQQfJKIlZ1ipml4NbM5vEp+U2Mnvfpa/CZe1oTXnLdldL8JJqJ9qTinP8BACnkt2SHGs2GKC1PbfcOpU8D0VRFkGefDaE1wh0O8Px2v+8qWk3cPCFleCvUdlt5qPW9ga18IDQ58kvSh6cjK1b49CPNGXDDhk=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bceb247f-1117-430b-5b1e-08d7095badc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 19:36:05.5141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3702
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hn7HV-002hD5-AV
Subject: Re: [tipc-discussion] TIPC ; config trouble ; help request
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgS3VtYXIsDQpZb3VyIGJpbmRpbmcgdGFibGUgbGlzdGluZyByZXZlYWxzIHRoYXQgeW91ciBu
b2RlIGFscmVhZHkgaGFzIGFuIGFkZHJlc3MgPDEuMS4xPiwgd2hpY2ggZXhwbGFpbnMgd2h5IHlv
dXIgYWRkcmVzcyBzZXR0aW5nIGZhaWxzLg0KWW91IHNob3VsZCBjaGVjayBpZiB5b3UgaGF2ZSBh
bnkgc2NyaXB0IHRoYXQgc2V0cyB0aGUgYWRkcmVzcyBieSBkZWZhdWx0IGF0IG1vZHVsZSBsb2Fk
aW5nLCBvciBtYXliZSB5b3UganVzdCBzZXQgaXQgbWFudWFsbHkgYW5kIHRoZW4gZm9yZ290Li4u
DQoNCkZ1cnRoZXJtb3JlLCBpdHMgc2VlbXMgeW91IGhhdmUgcHVibGlzaGVkIGEgc2VydmljZSA8
MSw4OCw4OD4gd2hpY2ggbWVhbnMgeW91IGFyZSBpbGxlZ2FsbHkgdXNpbmcgdGhlIHJlc2VydmVk
IHNlcnZpY2UgdHlwZSA8MT4uDQpUaGUgbGF0dGVyIGlzbid0IHlvdXIgZmF1bHQsIGJ1dCBkdWUg
dG8gYSBidWcgaW4gVElQQyB0aGF0IHdyb25nbHkgYWxsb3dzIHVzZXJzIHRvIHB1Ymxpc2ggc3Vj
aCBzZXJ2aWNlIHR5cGVzLCBpbiB0aGUgZnVuY3Rpb24gdGlwY19iaW5kKCkuDQpJIGRpc2NvdmVy
ZWQgdGhpcyB1ZyBhIGNvdXBsZSBvZiBtb250aHMgYWdvLCBidXQgaGF2ZW4ndCBmaXhlZCBpdCB5
ZXQsIGFuZCBJIGFtIG5vdCBxdWl0ZSBzdXJlIGhvdyB0byBkbyBpdCB3aXRob3V0IGJyZWFraW5n
IGFueSBCUEkuDQoNClRoaXMgbWF5IGNhdXNlIHlvdSBzdXJwcmlzZXMsIGJ1dCBJIGNhbm5vdCBz
ZWUgd2h5IGl0IHdvdWxkIGNhdXNlIHRoZSBiZWFyZXIgZW5hYmxpbmcgdG8gZmFpbC4gDQpJZiB0
aGlzIHByb2JsZW0gcGVyc2lzdHMsIHlvdSBzaG91bGQgcG9zdCBzb21lIG1vcmUgc3lzdGVtIGlu
Zm8gYWJvdXQgeW91ciBpbnRlcmZhY2VzLCB3aGljaCB0aXBjIGxpbmtzIHlvdSBoYXZlIGV0Yy4N
Cg0KQlINCi8vL2pvbg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1h
aGVzaCBLdW1hciB2aWEgdGlwYy1kaXNjdXNzaW9uIDx0aXBjLQ0KPiBkaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldD4NCj4gU2VudDogMTUtSnVsLTE5IDExOjQ5DQo+IFRvOiB0aXBjLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0OyBZaW5nIFh1ZQ0KPiA8eWluZy54dWVAd2lu
ZHJpdmVyLmNvbT4NCj4gU3ViamVjdDogUmU6IFt0aXBjLWRpc2N1c3Npb25dIFRJUEMgOyBjb25m
aWcgdHJvdWJsZSA7IGhlbHAgcmVxdWVzdA0KPiANCj4gIEhpIFlpbmcsDQo+IFRoYW5rIHlvdSB2
ZXJ5IG11Y2ggZm9yIGxldHRpbmcgbWUga25vdy5EbyB3ZSBzdXNwZWN0IGFueSByZWxhdGVkIGlv
Y3RsKCkNCj4gcGF0Y2hlcz8uwqBjb3VsZCB5b3UgcGxlYXNlIHBvaW50IG1lIHRvIGxpbmsgd2hl
cmUgd2UgY2FuIHJldmlldyB0aGUgVElQQw0KPiBwYXRjaGVzIHRoYXQgd2VudCBpbiB0aGUga2Vy
bmVsLj8uDQo+IE11Y2ggYXBwcmVjaWF0ZSB0aGUgaGVscC4NCj4gdGhhbmtzICYgcmVnYXJkc01h
aGVzaCBrdW1hci5MDQo+ICAgICBPbiBNb25kYXksIDE1IEp1bHksIDIwMTksIDAyOjU2OjMyIGFt
IEdNVC03LCBZaW5nIFh1ZQ0KPiA8eWluZy54dWVAd2luZHJpdmVyLmNvbT4gd3JvdGU6DQo+IA0K
PiAgT24gNy8xMy8xOSAxMTo1OCBBTSwgTWFoZXNoIEt1bWFyIHZpYSB0aXBjLWRpc2N1c3Npb24g
d3JvdGU6DQo+ID4gVGlwYyBUZWFtLA0KPiA+DQo+ID4gR3JlZXRpbmdzIS4NCj4gPiBJIGhhdmUg
YmVlbiB1c2luZyBUSVBDIGZvciBhYm91dCBhIHllYXIgd2l0aG91dCBhbnkgaXNzdWVIb3dldmVy
IHRoZQ0KPiA+IFRJUEMgdG9vbCBpcyBiYWlsaW5nIG91dCB3aGVuIEkgdHJpZWQgdG8gc2V0IGFk
ZHJlc3MsIGJlYXJlcg0KPiA+DQo+ID4NCj4gPiAvICMgdGlwYyBub2RlIHNldCBhZGRyIDEuMS4x
MDANCj4gPg0KPiA+IGVycm9yOiBPcGVyYXRpb24gbm90IHBlcm1pdHRlZA0KPiA+DQo+ID4gLyAj
IHRpcGMgYmVhcmVyIGVuYWJsZSBtZWRpYSBldGggZGV2wqBpZW9iYw0KPiA+DQo+ID4gZXJyb3I6
IEludmFsaWQgYXJndW1lbnQNCj4gPg0KPiA+IC8gIw0KPiA+DQo+ID4gSSBhbSB1c2luZyB0aGUg
bmV3IGtlcm5lbCBub3c7DQo+ID4gwqB1bmFtZSAtYUxpbnV4IDJjM2YwYjAwMTkwMF8xX1JQXzAg
NC40LjE4MCAjMSBTTVAgVHVlIEp1biAyNQ0KPiAxNTozNjoxMA0KPiA+IFBEVCAyMDE5IHg4Nl82
NCB4ODZfNjQgeDg2XzY0IEdOVS9MaW51eA0KPiA+IMKgZG1lc2cgb3V0cHV0IDsgZ3JlcCAtaSBU
SVBDIGQudHh0W8KgIMKgMjkuNDM2NTk5XSB0aXBjOiBBY3RpdmF0ZWQNCj4gPiAodmVyc2lvbiAy
LjAuMClbwqAgwqAyOS40MzY3NjhdIHRpcGM6IFN0YXJ0ZWQgaW4gc2luZ2xlIG5vZGUgbW9kZQ0K
PiANCj4gU3VzcGVjdGVkIHNvbWUgVElQQyBwYXRjaGVzIGludGVncmF0ZWQgdGhyb3VnaCA0LjQu
MTgwIHJlbGVhc2UgaW50cm9kdWNlZA0KPiByZWdyZXNzaW9uLiBUaGUgbW9zdCBzaW1wbGVzdCBt
ZXRob2QgdG8gaWRlbnRpZnkgdGhlIGlzc3VlIGlzIHRvIHJldmVydCBzb21lDQo+IFRJUEMgcGF0
Y2hlcyB0byBpZGVudGlmeSB3aGljaCBvbmVzIGNhdXNlZCB0aGUgcmVncmVzc2lvbi4NCj4gDQo+
ID4NCj4gPiBbMmMzZjBiMDAxOTAwXzFfUlBfMDovXQ0KDQokIHRpcGMtY29uZmlnIC1udCANCg0K
VHlwZcKgIMKgICBMb3dlcsKgIMKgIMKgICAgICBVcHBlciAgICAgICAgICBQb3J0IElkZW50aXR5
wqAgwqAgICAgICAgICAgIFB1YmxpY2F0aW9uICAgICAgU2NvcGUNCiAwwqAgwqAgwqAgwqAgIMKg
IDE2NzgxMzEzICAxNjc4MTMxM8KgIMKgPDEuMS4xOjA+wqAgwqAgwqAgwqAgwqAgwqAgICAgICAg
ICAgMTY3ODEzMTPCoCAgICAgwqAgem9uZQ0KIDEgwqAgwqAgwqAgIMKgIMKgIDEgICAgICAgICAg
ICAgICAgIDHCoCDCoCDCoCDCoCAgICAgICAgICAgIDwxLjEuMTo0ODMzOTA4NzQ+wqAgwqA0ODMz
OTA4NzXCoCAgICBub2RlDQogMcKgIMKgIMKgIMKgICAgwqAgODggICAgICAgICAgICAgICA4OMKg
IMKgIMKgIMKgIMKgICAgICAgICA8MS4xLjE6Mjg3MDk0MzMyNj7CoDI4NzA5NDMzMjfCoCB6b25l
DQogMTUwMDPCoCDCoDUgICAgICAgICAgICAgICAgIDXCoCDCoCDCoCDCoCDCoCAgICAgICAgICAg
PDEuMS4xOjM1NTY3ODEwOTY+wqAgMzU1Njc4MTA5NyB6b25lDQoNClsyYzNmMGIwMDE5MDBfMV9S
UF8wOi9dJA0KPiA+DQo+ID4gcGxlYXNlIGxldCBtZSBrbm93IGlmIGFueSBpc3N1ZS4NCj4gPiB0
aGFua3MgJiByZWdhcmRzTWFoZXNoIGt1bWFyLkwNCj4gPg0KPiA+DQo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB0aXBjLWRpc2N1c3Npb24g
bWFpbGluZyBsaXN0DQo+ID4gdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0K
PiA+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlz
Y3Vzc2lvbg0KPiA+DQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0DQo+IHRpcGMtZGlzY3Vz
c2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQNCj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uDQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0
aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
