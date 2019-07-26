Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EA8768D6
	for <lists+tipc-discussion@lfdr.de>; Fri, 26 Jul 2019 15:47:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hr0ZT-0007cc-8a; Fri, 26 Jul 2019 13:47:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hr0ZS-0007cV-3X
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Jul 2019 13:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l0S9fV5i8z3tagHuyFqDcW1jslyurLKQNiQEDAklEK4=; b=CnhmQ/JI07f7P1xqyAOs53Pkkx
 9+S3Itviu2lgDCu/wgGjVPOBNZGNxcWikFsiMBE24vG1IRCBDd9BW6l8/ak5qwhvXj51imwIw7kH9
 0DJExGDxoAYXkqXOZlrteZ0RNybyiajVwttQ6sl1tbVOe31QXY3QdKr2B11/Aft8FCF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l0S9fV5i8z3tagHuyFqDcW1jslyurLKQNiQEDAklEK4=; b=j31YXBKLj7pxlktWvtd/XWp/7o
 XivPqvKUNcW0eSa8+UA0zLy+2pIRP5UVpSoRydZFG/6YQqwOLHoK8ReKGoI3XcVrj5rfVaiKQgENa
 ZM2cViGy1X48pJKYgiVfcPOAlPEXPwMxLXQsKXxW+tRzbl8vDEO9XMDxymCysMPdxx2Y=;
Received: from mail-eopbgr760087.outbound.protection.outlook.com
 ([40.107.76.87] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hr0ZM-00H6e2-4l
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Jul 2019 13:47:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nAFc8E56qWZKq4c8hu3N9XhHDFtsU8IO6PjsnOhulvliZM0dZz03AAbZGgirammmR4uEgAe3GOnXuwbWdwBkANVRORtg7mNmNx2cTbG/Qvgte5QOvJHI42V9h8dlpHAt1wv4vCJeIuE4AUZErEBTG0GMVKEFYVOmZWry8n8ZdCL8viMTLPSF8N6XYVuxU1BIHvtyaIRjMySL7VbWLG/Bw5NM4PieWMb5KcpjOHjFy65eCjW+kqGVRV5NCS3EyrrG8t6eeJBuwkglonWUd3gnCMuwbgBzIGl2rOZZo5NPFIvtJb3EmMLFaetbC5F+2tp7ODlEzyGJSSbGC6cjtdT9QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l0S9fV5i8z3tagHuyFqDcW1jslyurLKQNiQEDAklEK4=;
 b=S8ESLwVAVNSEkr1qoBdqtbwWyFN2NboB3/JIwJFf2iymeZHp7MSOqoAytW9woCKicG6MNh5quBDUMvtBcColsn+kywnBN+7d66T3NIrTBEM2x1mtHwebBKzSz3b/MX/3txrC3rHRPwRM/DOSwXT83QiLOll+LAAYOc5Xf3ziZUr1S3TU3Tyu4vhYNHnAzeNuyuEHPGR8RXJdv9NkW19RF9gAlAyiisXRlfU0Kw0cl2k1gAfqEn7GmBtMdhS0NP1UF/y+3H+EVQjSqIhzk4wRVoF6zQyons7xd8VEsQkePavWqPigHP1UYlHHaFEvxvs1Cseocw+t8Lj5jcLo3YvqQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l0S9fV5i8z3tagHuyFqDcW1jslyurLKQNiQEDAklEK4=;
 b=TWfzoOfxNFZNhzmJSPY/8mvFIdZ0uxzeNQnGyE4CYuBVB5VdJRo9vNMNAEApxZA8CX6/XH0QyoVkC7L0h0ilyQli456tJGbC8Ue7uDeOG9y+PnvtyYTI+RYkbJovm9C7FoiCC94P59SkrITlVveIM5vb4Vlf6bncUbtso3PSrSU=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3654.namprd15.prod.outlook.com (52.132.229.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Fri, 26 Jul 2019 13:31:33 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2115.005; Fri, 26 Jul 2019
 13:31:33 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Slowness forming TIPC cluster with explicit node addresses
Thread-Index: AQHVQ0Hkw5M86TmlWkazctTgG4cJIabc5XqA
Date: Fri, 26 Jul 2019 13:31:33 +0000
Message-ID: <CH2PR15MB35754D65AB240A74AE488E719AC00@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1564097836.11887.16.camel@alliedtelesis.co.nz>
In-Reply-To: <1564097836.11887.16.camel@alliedtelesis.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2be64543-4892-458a-6b43-08d711cd9399
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3654; 
x-ms-traffictypediagnostic: CH2PR15MB3654:
x-microsoft-antispam-prvs: <CH2PR15MB3654A777764C903BF0B2336E9AC00@CH2PR15MB3654.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(199004)(189003)(13464003)(11346002)(476003)(446003)(6246003)(486006)(66946007)(2501003)(229853002)(186003)(99286004)(76176011)(26005)(316002)(7696005)(9686003)(5660300002)(305945005)(6506007)(53546011)(7736002)(33656002)(64756008)(66556008)(66476007)(25786009)(53936002)(71200400001)(86362001)(52536014)(71190400001)(4326008)(14444005)(76116006)(256004)(68736007)(8936002)(6116002)(55016002)(6436002)(14454004)(8676002)(81166006)(2906002)(81156014)(66066001)(44832011)(74316002)(110136005)(54906003)(3846002)(66446008)(102836004)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3654;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eu1KxgbqgEZ+Mi/AKLQI12Taf7l6po7hKt4ZjSmvokiB58GBuoBjPVphv335VasZNlINasGDpv3+yQeGt+Qpk93TtsnU+fB+wKsZqLlT4KUGmsZ7vGmGdH7VdLgdrA2SsJ0oWjmzav171nFr8lE3QRuVNfMeusUiXnCW1sA8HxNf9D0k0rwCg5KfdsyPtX6APuNnfZqosaDZyk60h7E+2BXZWMJknboz0HJM98+9AJuqzkYzvM1Vb7oe/iQCWlwQtRWLXTqZMBVD1odW/HitSrggVf50hkTMiF6/hz35kilQvL7/dmahnXsNbPPp6Wp5i9Xrw+D+mpGAxRiLdRErQvp9z12YasAm1ySRl/IufxlbDFHB0MRmiPyyngWP7Ss1XkQDkzzaRKpPxtyNHG2E06y4f9e0fmFaHSncHDbli9k=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2be64543-4892-458a-6b43-08d711cd9399
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 13:31:33.7148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3654
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.76.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hr0ZM-00H6e2-4l
Subject: Re: [tipc-discussion] Slowness forming TIPC cluster with explicit
 node addresses
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbmV0ZGV2LW93bmVyQHZn
ZXIua2VybmVsLm9yZyA8bmV0ZGV2LW93bmVyQHZnZXIua2VybmVsLm9yZz4gT24NCj4gQmVoYWxm
IE9mIENocmlzIFBhY2toYW0NCj4gU2VudDogMjUtSnVsLTE5IDE5OjM3DQo+IFRvOiB0aXBjLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFNsb3duZXNzIGZv
cm1pbmcgVElQQyBjbHVzdGVyIHdpdGggZXhwbGljaXQgbm9kZSBhZGRyZXNzZXMNCj4gDQo+IEhp
LA0KPiANCj4gSSdtIGhhdmluZyBwcm9ibGVtcyBmb3JtaW5nIGEgVElQQyBjbHVzdGVyIGJldHdl
ZW4gMiBub2Rlcy4NCj4gDQo+IFRoaXMgaXMgdGhlIGJhc2ljIHN0ZXBzIEknbSBnb2luZyB0aHJv
dWdoIG9uIGVhY2ggbm9kZS4NCj4gDQo+IG1vZHByb2JlIHRpcGMNCj4gaXAgbGluayBzZXQgZXRo
MiB1cA0KPiB0aXBjIG5vZGUgc2V0IGFkZHIgMS4xLjUgIyBvciAxLjEuNg0KPiB0aXBjIGJlYXJl
ciBlbmFibGUgbWVkaWEgZXRoIGRldiBldGgwDQoNCmV0aDIsIEkgYXNzdW1lLi4uDQoNCj4gDQo+
IFRoZW4gdG8gY29uZmlybSBpZiB0aGUgY2x1c3RlciBpcyBmb3JtZWQgSSB1c2XCoHRpcGMgbGlu
ayBsaXN0DQo+IA0KPiBbcm9vdEBub2RlLTUgfl0jIHRpcGMgbGluayBsaXN0DQo+IGJyb2FkY2Fz
dC1saW5rOiB1cA0KPiAuLi4NCj4gDQo+IExvb2tpbmcgYXQgdGNwZHVtcCB0aGUgdHdvIG5vZGVz
IGFyZSBzZW5kaW5nIHBhY2tldHMNCj4gDQo+IDIyOjMwOjA1Ljc4MjMyMCBUSVBDIHYyLjAgMS4x
LjUgPiAwLjAuMCwgaGVhZGVybGVuZ3RoIDYwIGJ5dGVzLCBNZXNzYWdlU2l6ZQ0KPiA3NiBieXRl
cywgTmVpZ2hib3IgRGV0ZWN0aW9uIFByb3RvY29sIGludGVybmFsLCBtZXNzYWdlVHlwZSBMaW5r
IHJlcXVlc3QNCj4gMjI6MzA6MDUuODYzNTU1IFRJUEMgdjIuMCAxLjEuNiA+IDAuMC4wLCBoZWFk
ZXJsZW5ndGggNjAgYnl0ZXMsIE1lc3NhZ2VTaXplDQo+IDc2IGJ5dGVzLCBOZWlnaGJvciBEZXRl
Y3Rpb24gUHJvdG9jb2wgaW50ZXJuYWwsIG1lc3NhZ2VUeXBlIExpbmsgcmVxdWVzdA0KPiANCj4g
RXZlbnR1YWxseSAoYWZ0ZXIgYSBmZXcgbWludXRlcykgdGhlIGxpbmsgZG9lcyBjb21lIHVwDQo+
IA0KPiBbcm9vdEBub2RlLTbCoH5dIyB0aXBjIGxpbmsgbGlzdA0KPiBicm9hZGNhc3QtbGluazog
dXANCj4gMTAwMTAwNjpldGgyLTEwMDEwMDU6ZXRoMjogdXANCj4gDQo+IFtyb290QG5vZGUtNcKg
fl0jIHRpcGMgbGluayBsaXN0DQo+IGJyb2FkY2FzdC1saW5rOiB1cA0KPiAxMDAxMDA1OmV0aDIt
MTAwMTAwNjpldGgyOiB1cA0KPiANCj4gV2hlbiBJIHJlbW92ZSB0aGUgInRpcGMgbm9kZSBzZXQg
YWRkciIgdGhpbmdzIHNlZW0gdG8ga2ljayBpbnRvIGxpZmUgc3RyYWlnaHQNCj4gYXdheQ0KPiAN
Cj4gW3Jvb3RAbm9kZS01IH5dIyB0aXBjIGxpbmsgbGlzdA0KPiBicm9hZGNhc3QtbGluazogdXAN
Cj4gMDA1MGI2MWJkMmFhOmV0aDItMDA1MGI2MWU2ZGZhOmV0aDI6IHVwDQo+IA0KPiBTbyB0aGVy
ZSBhcHBlYXJzIHRvIGJlIHNvbWUgZGlmZmVyZW5jZSBpbiBiZWhhdmlvdXIgYmV0d2VlbiBoYXZp
bmcgYW4NCj4gZXhwbGljaXQgbm9kZSBhZGRyZXNzIGFuZCB1c2luZyB0aGUgZGVmYXVsdC4gVW5m
b3J0dW5hdGVseSBvdXIgYXBwbGljYXRpb24NCj4gcmVsaWVzIG9uIHNldHRpbmcgdGhlIG5vZGUg
YWRkcmVzc2VzLg0KDQpJIGRvIHRoaXMgbWFueSB0aW1lcyBhIGRheSwgd2l0aG91dCBhbnkgcHJv
YmxlbXMuIElmIHRoZXJlIHdvdWxkIGJlIGFueSB0aW1lIGRpZmZlcmVuY2UsIEkgd291bGQgZXhw
ZWN0IHRoZSAnYXV0byBjb25maWd1cmFibGUnIHZlcnNpb24gdG8gYmUgc2xvd2VyLCBiZWNhdXNl
IGl0IGludm9sdmVzIGEgREFEIHN0ZXAuDQpBcmUgeW91IHN1cmUgeW91IGRvbid0IGhhdmUgYW55
IG90aGVyIG5vZGVzIHJ1bm5pbmcgaW4geW91ciBzeXN0ZW0/DQoNCi8vL2pvbg0KDQoNCj4gDQo+
IFtyb290QG5vZGUtNSB+XSMgdW5hbWUgLWENCj4gTGludXggbGludXhib3ggNS4yLjAtYXQxKyAj
OCBTTVAgVGh1IEp1bCAyNSAyMzoyMjo0MSBVVEMgMjAxOSBwcGMNCj4gR05VL0xpbnV4DQo+IA0K
PiBBbnkgdGhvdWdodHMgb24gdGhlIHByb2JsZW0/DQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBj
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
