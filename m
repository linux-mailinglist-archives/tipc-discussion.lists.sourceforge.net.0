Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D7C280C7C
	for <lists+tipc-discussion@lfdr.de>; Fri,  2 Oct 2020 05:20:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kOBc0-0004tN-KF; Fri, 02 Oct 2020 03:20:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kOBbz-0004t9-8z
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 03:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FeHA2EJlsYKUacuEcahGp/Ud7POnZBVKCjBM1W/Aph0=; b=kbVrpVS27ee/3jJ99cDuGaUuZ6
 PWz5ZwCt3m5qRJdUbLaVBmKQOOc0nzjDt5xQnjYqMiuwEo/vFCA0jY6KWo/HlzQrTdkA2/QRYws2u
 Mw0FCqNNZtHC8+7xwzghWSfgVSQr3j0RuWmtA+2nBP3M8bgijmFbp5hu1WCoHxkH0wkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FeHA2EJlsYKUacuEcahGp/Ud7POnZBVKCjBM1W/Aph0=; b=IVvE5qEM78HABsZ+u0K71SM6Uv
 WXLGJlOEla9m8U2ROht5kHy8AuMlOo3+npNW6x1rTKDz9hM72JMY5HNYPIhEHhz+Pyfdv61o7R1uB
 9JLFDBWVjj7dlL7oY0wJMd5o+Ppz4JcD3wcHlp2JyCLS5kMSkAF5oTA+kSPpiH7O6SnA=;
Received: from mail-eopbgr80110.outbound.protection.outlook.com
 ([40.107.8.110] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kOBbs-00DdnM-Ns
 for tipc-discussion@lists.sourceforge.net; Fri, 02 Oct 2020 03:19:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=go5kApsGajjAqOeCwM2FCIrwKLmLkOhIXqoObEPzr9OR+sgkJwizo7bMt24qAqLhAtNwwOQRG+QR/berTmKlC3bHnS78u0hYskeCCEebrAVKtO1MFf2ooGS9EUYgGXYE2lZf2+aqHWY+LCKcEKxnMr+RWC8TSEgwJaSQoE4pEFjTZV6EElpNRdIR81yW/yrW2H+BaYj7AMFrg1Vqa8v6DJpCf6Tp/EaBJr0gCqATI5kUczHJQtcqmKp/ym3ha/JWAktvnEXY0pLUh4fVyFP726pbw2t433lbJGNfsgldCqsKw3S5i46YdJ+mXFDxQofJ7VPHAfHMyEvSFc7ZSl82tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FeHA2EJlsYKUacuEcahGp/Ud7POnZBVKCjBM1W/Aph0=;
 b=QfCR38CKvggLUfub5Iy4hl3JgEwzF02NxpJXxHZXbjnnKf0hVMXSQK8/te4ZeV2Fo45Ec8LDr5OiNIAdPDcYwFrQw3j9e5VMSD8eSRC6Lty0jSScffPuSfewbDCX5mbv+Psgb3IWVkXlgzm8d1acFbfhiKXq1e7OXlUmDbsjz0n11Hrtbj3+xxZgVwPcgBuP9atBYyjH94dDBFWVrccW2W0PqMG1wFvoy6QplMM8w/GT3nG3FU0OvnZ2K5kOocH0DwmiCuMYotee+yGmCBbQrlHvHjSVyW+bc/F8NILiB4ond1Yhawna+VyyJj1xWN3XmlbNT+PkM/BghuE2uUn9Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FeHA2EJlsYKUacuEcahGp/Ud7POnZBVKCjBM1W/Aph0=;
 b=S1ogFupx9DY+htMaGBC1TRgisAQTe1plonzIwrjQAO14DM2013uk1PADg22H1JmVBD8u8Sp4kIoX1J9yOx0pzOid5KtfBTR1bfPrVy3S9B0eBVAbISL2e3Zhbf61NuCfsjAql7sI1++VC8RFsDC33xRrykkByCw3iaPynfFpcG8=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6702.eurprd05.prod.outlook.com (2603:10a6:800:136::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.35; Fri, 2 Oct
 2020 03:04:59 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3412.029; Fri, 2 Oct 2020
 03:04:59 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, tipc-dek <tipc-dek@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
Thread-Topic: tipc.py
Thread-Index: AQHWmD2qtJVVZaOSQkW73jj9Jb3Aj6mDoJJQ
Date: Fri, 2 Oct 2020 03:04:58 +0000
Message-ID: <VI1PR05MB4605432541CA65D6F0BE7741F1310@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
In-Reply-To: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8abf064-644a-46fb-4346-08d8667ff2a0
x-ms-traffictypediagnostic: VI1PR05MB6702:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB67023B35B8B23107B9F31612F1310@VI1PR05MB6702.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TzGyEEQ/DDo3lI0Yui0f5B6HE4x4IhuupNR75UjOo5IhR0CeoVWxAjjDZkiNt3aV/4ysw3csq4ZKANrGPcA3DN6Ied21xI2iHwQ/ijy8GqiATBgbUefz1fVWunCH3KgSoWiktqgygzPMnnjDggQ1De1rhskwaNJ4+VpOnqX52pqFWHatslDHctx5w5ZzN24AuYD4gRq55iB0R/0gS3kieZaKNnMgWDSEQpIiVx7GRvNZ42Dgv6sIWsuCxJ5e/b8e0GuK734XdyxoFpJfzk7PFIFMJCOliCypbLZrFIfSbw078EuAyRHpENI1KrtPrGyDJRsWvV28xDIV0FWHqKm7wcsgnCfgjR9tzQA9xn9krRLWNO1eUst3VfHkwcpW6Gy/8q0caOXNVW+2BoRERUsxnA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39840400004)(136003)(346002)(376002)(396003)(83080400001)(8676002)(8936002)(966005)(76116006)(66446008)(64756008)(66946007)(52536014)(33656002)(2906002)(71200400001)(55016002)(9686003)(3480700007)(110136005)(53546011)(6506007)(83380400001)(5660300002)(316002)(86362001)(7696005)(478600001)(66556008)(66476007)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 27Lf7HTaGyZ8Gp8gowPJAiScHYbbUMXxGTo8h4tz2o+fAh0H2ffbcJyHbu/9rLjgUrA2WvqnQOQIY5M1vdvhNDiNAh473T5S1qHO7YHK2Nh7XH7F+wVMolLA4PIObzK0atXqnm9JE4O+1AOrztoNezdObsfHlz7gK3R2tJFdMy+f7SekvJHtmiDDZt6wp3A18WLHIb7xk1NMv3z/r144k4K2K0A2bI95g1YBgNGWCLzckda9tk2uQirCdI6BZqz04L5uJnNEK9V0+PjGQQ7WYB8Qxm/1jJDWfYGX3dbwwJ/S6x7DG5YFyCWX7QBwdiQWNM5E4B/cW2D7knG+9oi7zFSdX3xHzLm7Nh+l7opAajtBte3tvA+9I6VATSvEsnPsfvTPbZc7FjY9zGyZxbxECn1MA3UwltvzJwQImSVfQ8qlroOOJuvr9dSqW/+t6gxWwZ40PCIdGvAoe4LDhjaM01OZOELokkPcEqSW1f34rBuLOC/MPTfCyiSvvAWWeXKAc1w3wnFPovmfoXKAZUfHpXdnLHd2NVFjnvcPGDDWsVLWJ+2h+FA7HxFs9G4ntghtpi3qCMnMgLIfbs1mJgbp15WMIL7MqPbVajNHLt9BsAl7EuEb6gsmJdpRTCsRQuP9w86lsS6qFt/paJD77gJ3Iw==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8abf064-644a-46fb-4346-08d8667ff2a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2020 03:04:58.9384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lz6Y2mygx1uudcnuEeglWPkEWKz/3xubU1Z8ArboDb9vNKX2hp/Um65KLiaD1xvonERydWQZ3JRs58mdSZSJXX6UTX3GL2CQC1pCPVQ3XO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6702
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tipc.py]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.110 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kOBbs-00DdnM-Ns
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

SGkgSm9uLA0KDQpJJ3ZlIGRvbmUgdGhpcyBhIGxvbmcgdGltZSBhZ286DQo1MDU3ZjhiYjRkZTAg
dGlwY3V0aWxzOiBpbnRyb2R1Y2UgcHl0aG9uIGFwaQ0KDQpCYXNpY2FsbHksIGl0IHdvcmtzIHdp
dGggUHl0aG9uIDIuDQoNClJlZ2FyZHMsDQpIb2FuZw0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiBGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPg0KPiBTZW50OiBGcmlk
YXksIE9jdG9iZXIgMiwgMjAyMCA0OjU2IEFNDQo+IFRvOiB0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0OyB0aXBjLWRlayA8dGlwYy1kZWtAZGVrdGVjaC5jb20uYXU+OyBYaW4g
TG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+OyBZaW5nIFh1ZQ0KPiA8eWluZy54dWVAd2luZHJp
dmVyLmNvbT4NCj4gU3ViamVjdDogdGlwYy5weQ0KPiANCj4gSSBhbSB1cGRhdGluZyB0aGUgcHJv
Z3JhbW1lcidzIG1hbnVhbCwgYW5kIHJlYWxpemVkIHRoYXQgdGhlIFB5dGhvbiBBUEkNCj4gaXMg
bWlzc2luZy4NCj4gU2luY2UgdGhlcmUgYXJlIHNvIG1hbnkgcHJvZ3JhbW1lcnMga25vd2luZyBQ
eXRob24gbm93YWRheXMsIGJ1dCBub3QgQywNCj4gSSB0aGluayBpdCB3b3VsZA0KPiBiZSB2ZXJ5
IHVzZWZ1bCB0byBoYXZlIHRoaXMgQVBJIGluIHRoZSBtYW51YWwsIHNvIHRob3NlIHByb2dyYW1t
ZXJzIGNhbg0KPiBnZXQgYSBmZWVsaW5nDQo+IGZvciBob3cgc2ltcGxlIGl0IHRvIHVzZSBUSVBD
Lg0KPiANCj4gVHVvbmcgc3RhcnRlZCBkZXZlbG9wbWVudCBvZiBhbiBBUEkgYmFzZWQgb24gdGhl
IGxpYnRpcGMgQy1BUEksIGJ1dCBpdA0KPiBzZWVtcyB0byBtZSBpdCB3YXMgbmV2ZXIgZmluaXNo
ZWQuDQo+IEhvd2V2ZXIsIFB5dGhvbiBkb2VzIHNpbmNlIGEgbG9uZyB0aW1lIGhhdmUgbmF0aXZl
IFRJUEMgc3VwcG9ydCwNCj4gYWxsZWdlZGx5IGJvdGggaW4gUHl0aG9uIDIgYW5kIFB5dG9uIDMu
DQo+IEkgaGFkIG5ldmVyIHNlZW4gdGhhdCBBUEkgdW50aWwgbm93LCBidXQgYWZ0ZXIgc29tZSBn
b29nbGluZyBJIGNhbWUgb3Zlcg0KPiB0aGUgZm9sbG93aW5nIGxpbmssIHRoYXQgc2VlbXMgdG8g
Y29udGFpbg0KPiB0aGF0IG5hdGl2ZSBpbXBsZW1lbmF0aW9uOg0KPiANCj4gaHR0cHM6Ly9ibGl0
aXJpLmNvbS5hci9wL3B5dGlwYy8NCj4gDQo+IEkgd29uZGVyIGlmIGFueWJvZHkgaGFzIHRoZSB0
aW1lIHRvIHRyeSB0aGlzIG9uZSwgYW5kIHZlcmlmeSwgdXNpbmcgdGhlDQo+IGV4YW1wbGVzLCB0
aGF0IGl0IHJlYWxseSB3b3Jrcy4NCj4gSXQgd291bGQgYmUgZW1iYXJyYXNzaW5nIHRvIGFkZCB0
aGlzIHRvIHRoZSBtYW51YWwgaWYgaXQgdHVybnMgb3V0IGl0DQo+IGRvZXNuJ3Qgd29yay4NCj4g
DQo+IFJlZ2FyZHMNCj4gLy8vam9uDQo+IA0KPiBQUy4gRG9lcyBhbnlib2R5IHZvbHVudGVlciB0
byBiZSBiZWNvbWUgY28tbWFpbnRhaW5lciBvZiB0aGUgaG9tZSBwYWdlDQo+IGFuZCBwcm9qZWN0
IHBhZ2UNCj4gIMKgwqDCoMKgwqAgYXQgU291cmNlRm9yZ2U/IEkgdGhpbmsgd2Ugc2hvdWxkIGV2
ZW4gY29uc2lkZXIgbW92aW5nIGl0IHRvDQo+IEdpdExhYiBvciBHaXRIdWIuDQo+ICDCoMKgwqDC
oMKgIFNpbmNlIHdlIGhhdmUgb3VyIG93biBkb21haW4gKHRpcGMuaW8pIHRoYXQgY291bGQgZWFz
aWx5IGJlDQo+IHJlLXN0ZWVyZWQgdG8gYSBkaWZmZXJlbnQNCj4gIMKgwqDCoMKgwqAgaG9zdCBz
eXN0ZW0uDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
dGlwYy1kaXNjdXNzaW9uCg==
