Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D5259DAE
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Sep 2020 19:52:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDASf-0008Ea-Qn; Tue, 01 Sep 2020 17:52:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kDASd-0008E6-Ll
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 17:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dsR2DvQJ8DEI/qi+ML1cMeLuZQJfjVh2Y7kTrWlbe2g=; b=BGFLbMrSOYOjXj4FuOxSGzhT+x
 e8iTIYUQfm9/srsAkFZKtqo1MHNU+NZsGMjwWvyXQRiRAfk04gHhaUR48lDrrgUWeemq9pG0Wz+Y8
 gYlXXEj171uzejm/3478QrtwuiUXr4A8KU+xXB4lycizvKbfEEPpvfBE/p86GkY1QBLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dsR2DvQJ8DEI/qi+ML1cMeLuZQJfjVh2Y7kTrWlbe2g=; b=lKTREEqdsqQpec2+Yu7UUCXRyn
 PwRpgsC/F4MZ54yt7y8yq1HBSPucTNzULSZ3v1JBVYt6uE8uy5lZbVR0kRmMgmpKFGdGvydpdcI+u
 tGOuaoQo0Hk+L4hWqeCrylsIyxIOTEwX9hOcoSIqoRB2InIWqN7vuRbcK1fBHT9XNPyY=;
Received: from mail-db8eur05on2101.outbound.protection.outlook.com
 ([40.107.20.101] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDASU-0085M7-Mg
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 17:52:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dNF/9S3fqml9QYXGb0/4oae0bhpLyScfndoZMvjyuFAkQb+jdW2UYGxBSl2hOZDiq9kZbhMxtsSWLWPIa1k8kqj4CaSZJlaQQGNYE5h0s0fE0CRwBR73w1PGGYmuGaLdkGC7RlZReG3CNbGL6vakabIx6QlhVYHEKANAR3iUOjUBq+6GwUP3Qpyrbc9sTXfbdpB7zIZk5+fwCb2MDFN3gbtbdaxZkclECUrYCait6UhDg1v39KvlrKkGkVgvbSf9iRzsRQdtxORkTPd53ldz63yeXTyZw6dCZpF7wMaR7nSQzs1BPgytgNhVmYnx/4pgV30GhHHhgvCE19PDY/wyhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsR2DvQJ8DEI/qi+ML1cMeLuZQJfjVh2Y7kTrWlbe2g=;
 b=C/JxSJSDMd0sHBi5IMcVB4HWxzGkbht24rJCsoAlgIQqBPaVN6b8aTa9qKG2wYaWx2u1XOKY+qIFjXNjH4HVpIRH3yFfZsNp+rI8JkVP4Ue6zNww3cDMsenVMVzQyjDSS2TOvyx4SvnR3jjbZlg5cxSZ00Ad2U6eUDfQD9Lfd960fGtXS+b3suiya6r+pYCfAfV53L3JBIE+zX3H28yvv/3rDq3nqad+SXMlUP0rH9cASY1uFXLMTaOM66Mslu1G0mXe48AAbKDyvWGOLP+sKTQ4cZHuOLfQD6jK7owEPavIhueQjp+co89DdGQQN4pqUpL98jS5vR2YC1B9P4/5wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsR2DvQJ8DEI/qi+ML1cMeLuZQJfjVh2Y7kTrWlbe2g=;
 b=eW9+aSeP6QYfUEYhgl8ZHja01aKG3NGxYhlCVQY/Az20fQQj7u3YaKIVXDYCOPDRDBxsUM3Y+LgxmnR3vRID5P6xv20R3JEPJ51H+e+kO5XYn2/rIH3tkERb6pu7uE5+/zj39tj7rovqcD14BjCyPp99T0eU/R29Y0PB+PMTRVE=
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR0502MB3827.eurprd05.prod.outlook.com (2603:10a6:208:1a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.23; Tue, 1 Sep
 2020 17:52:24 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3326.025; Tue, 1 Sep 2020
 17:52:24 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Eric Dumazet <eric.dumazet@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "maloy@donjonn.com" <maloy@donjonn.com>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [net] tipc: fix using smp_processor_id() in preemptible
Thread-Index: AQHWfoc+himFBG6tQEGws4qIktdqQalR4IkAgAACUeCAABe0AIAAAmDQgAAv7QCAAYkt0IAAEM4AgAA+DjA=
Date: Tue, 1 Sep 2020 17:52:23 +0000
Message-ID: <AM8PR05MB7332020CE2FB9E0B416D70BAE22E0@AM8PR05MB7332.eurprd05.prod.outlook.com>
References: <20200829193755.9429-1-tuong.t.lien@dektech.com.au>
 <f81eafce-e1d1-bb18-cb70-cfdf45bb2ed0@gmail.com>
 <AM8PR05MB733222C45D3F0CC19E909BB0E2510@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <0ed21ba7-2b3b-9d4f-563e-10d329ebeecb@gmail.com>
 <AM8PR05MB7332E91A67120D78823353F6E2510@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <3f858962-4e38-0b72-4341-1304ec03cd7a@gmail.com>
 <AM8PR05MB7332BE4B6E0381D2894E057AE22E0@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <338d5df9-fe4e-7acf-1480-99984dfeab34@gmail.com>
In-Reply-To: <338d5df9-fe4e-7acf-1480-99984dfeab34@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [183.80.118.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2ed6dd0-00b0-49ab-bfca-08d84e9fc86a
x-ms-traffictypediagnostic: AM0PR0502MB3827:
x-microsoft-antispam-prvs: <AM0PR0502MB3827A5122140DEEC33B99A1BE22E0@AM0PR0502MB3827.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0NAsJBGfVppf/kM+XZMHaU+ERMF3+W+7y/9+9ms3P5Vm8Y8I3NsI2H/v4hIFm29I0ZaonCQGw/i0HMW/nX8l1OKHyLERFvwfafrOcqmYIBjH3AY0cXycCwgYZydLzDXaizxdY6Qk48bZ9Dy4jrMLKBOyTkcSGcQV9LnW8z3Tm5d1Kq0NyRR76VB16UHnqrPR2gdBnh4lzGTVIgqL8u08VHs6+dkC0r4IxcGjn6PmUlriu62pQJOzTwj7+FRlhaj4RNgBfZaBFAquLVAO5zIbq9MS+hbsEGJILIVDObgv+kTwOhy38LwdJI95oBVYcI4N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(39850400004)(396003)(366004)(136003)(2906002)(52536014)(316002)(186003)(33656002)(478600001)(66446008)(83380400001)(66476007)(66556008)(66946007)(64756008)(55016002)(8676002)(110136005)(7696005)(76116006)(26005)(53546011)(6506007)(4326008)(8936002)(5660300002)(9686003)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1vqlHZLuqkuWzm1HMMXJ9Pm+5Dd1u/Rj/3nE1A+yoRT6j+CCnRe0J5ll3DjuSrszkfL6hTIWZ6/zytq3/A0beIzfBuHIAtKFPZAWnAtqf9Q1Tbua6uKS1BLRYq4cMuL3gUA8Ee7Frx3/GtUKmf5xZxAL195qdYwdkYK3fvPN7wP89hVhQ3E9oV3pyqu1s1M5Bbokb5edJrBI/CQb5oxmUjr7yMkny4YZue3Q2CC0U0mYu82zah7y1mxj0FcSK2SEqnolQmQoSznOWtw0H4k9UiPlPItRB2/akyuteynXdZkQvWRWSmLQjCfOpTGKBhnPfQ0EnLT9X47/uMuyO5dEKATI/CI7WzC1Z43QL6yZ/l1eT7CAhpY8B3Ivty5BQXojWV0qoFjEA0b2J5K6AsK5vUAsCUtX39uNxaM14ZCCPqr9nsYyPbYl+g6dmMA3gkOIPIKiE9tiMM/DKztHG6wNWYnXzMSyzJ0PdFEz0uG8/TML6t8o+yX3yFayV+QCwRsXQjz/B0TLtwlxfD5BS8N+Szb9PDdjZ2gFTcKLLXv+iF1aun5wCRaVEPimgvTwbVqV4XcUEhRyMvMsRSPmh8sFk4F0sW804kapY5rzmWyP/WIdbSBXyiEMdUBpI7oJkn/gFLe3ir+bF8R9hRpCdOBjOA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ed6dd0-00b0-49ab-bfca-08d84e9fc86a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2020 17:52:24.1060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2IYdeixvOMsqxxn3EMxbnuc+2bxMNHigvS44Ktl1LLAePcUZRLV3trQvIOX72RU8aD9c7fKtwJTK1iukYg+H3uDae/wliuwHItpHDkm1X8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB3827
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.101 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kDASU-0085M7-Mg
Subject: Re: [tipc-discussion] [net] tipc: fix using smp_processor_id() in
 preemptible
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRXJpYyBEdW1hemV0IDxl
cmljLmR1bWF6ZXRAZ21haWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMSwgMjAy
MCA4OjE1IFBNDQo+IFRvOiBUdW9uZyBUb25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNoLmNv
bS5hdT47IEVyaWMgRHVtYXpldCA8ZXJpYy5kdW1hemV0QGdtYWlsLmNvbT47IGRhdmVtQGRhdmVt
bG9mdC5uZXQ7DQo+IGptYWxveUByZWRoYXQuY29tOyBtYWxveUBkb25qb25uLmNvbTsgeWluZy54
dWVAd2luZHJpdmVyLmNvbTsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBDYzogdGlwYy1kaXNj
dXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0KPiBTdWJqZWN0OiBSZTogW25ldF0gdGlwYzog
Zml4IHVzaW5nIHNtcF9wcm9jZXNzb3JfaWQoKSBpbiBwcmVlbXB0aWJsZQ0KPiANCj4gDQo+IA0K
PiBPbiA5LzEvMjAgNToxOCBBTSwgVHVvbmcgVG9uZyBMaWVuIHdyb3RlOg0KPiA+DQo+ID4NCj4g
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogRXJpYyBEdW1hemV0IDxl
cmljLmR1bWF6ZXRAZ21haWwuY29tPg0KPiA+PiBTZW50OiBNb25kYXksIEF1Z3VzdCAzMSwgMjAy
MCA3OjQ4IFBNDQo+ID4+IFRvOiBUdW9uZyBUb25nIExpZW4gPHR1b25nLnQubGllbkBkZWt0ZWNo
LmNvbS5hdT47IEVyaWMgRHVtYXpldCA8ZXJpYy5kdW1hemV0QGdtYWlsLmNvbT47IGRhdmVtQGRh
dmVtbG9mdC5uZXQ7DQo+ID4+IGptYWxveUByZWRoYXQuY29tOyBtYWxveUBkb25qb25uLmNvbTsg
eWluZy54dWVAd2luZHJpdmVyLmNvbTsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiA+PiBDYzog
dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0KPiA+PiBTdWJqZWN0OiBSZTog
W25ldF0gdGlwYzogZml4IHVzaW5nIHNtcF9wcm9jZXNzb3JfaWQoKSBpbiBwcmVlbXB0aWJsZQ0K
PiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+PiBPbiA4LzMxLzIwIDM6MDUgQU0sIFR1b25nIFRvbmcgTGll
biB3cm90ZToNCj4gPj4+DQo+ID4+Pg0KPiA+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4+Pj4gRnJvbTogRXJpYyBEdW1hemV0IDxlcmljLmR1bWF6ZXRAZ21haWwuY29tPg0KPiA+
Pj4+IFNlbnQ6IE1vbmRheSwgQXVndXN0IDMxLCAyMDIwIDQ6NDggUE0NCj4gPj4+PiBUbzogVHVv
bmcgVG9uZyBMaWVuIDx0dW9uZy50LmxpZW5AZGVrdGVjaC5jb20uYXU+OyBFcmljIER1bWF6ZXQg
PGVyaWMuZHVtYXpldEBnbWFpbC5jb20+OyBkYXZlbUBkYXZlbWxvZnQubmV0Ow0KPiA+Pj4+IGpt
YWxveUByZWRoYXQuY29tOyBtYWxveUBkb25qb25uLmNvbTsgeWluZy54dWVAd2luZHJpdmVyLmNv
bTsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiA+Pj4+IENjOiB0aXBjLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0DQo+ID4+Pj4gU3ViamVjdDogUmU6IFtuZXRdIHRpcGM6IGZpeCB1
c2luZyBzbXBfcHJvY2Vzc29yX2lkKCkgaW4gcHJlZW1wdGlibGUNCj4gPj4+Pg0KPiA+Pj4+DQo+
ID4+Pj4NCj4gPj4+PiBPbiA4LzMxLzIwIDE6MzMgQU0sIFR1b25nIFRvbmcgTGllbiB3cm90ZToN
Cj4gPj4+Pj4gSGkgRXJpYywNCj4gPj4+Pj4NCj4gPj4+Pj4gVGhhbmtzIGZvciB5b3VyIGNvbW1l
bnRzLCBwbGVhc2Ugc2VlIG15IGFuc3dlcnMgaW5saW5lLg0KPiA+Pj4+Pg0KPiA+Pj4+Pj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4+Pj4+IEZyb206IEVyaWMgRHVtYXpldCA8ZXJp
Yy5kdW1hemV0QGdtYWlsLmNvbT4NCj4gPj4+Pj4+IFNlbnQ6IE1vbmRheSwgQXVndXN0IDMxLCAy
MDIwIDM6MTUgUE0NCj4gPj4+Pj4+IFRvOiBUdW9uZyBUb25nIExpZW4gPHR1b25nLnQubGllbkBk
ZWt0ZWNoLmNvbS5hdT47IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGptYWxveUByZWRoYXQuY29tOyBt
YWxveUBkb25qb25uLmNvbTsNCj4gPj4+Pj4+IHlpbmcueHVlQHdpbmRyaXZlci5jb207IG5ldGRl
dkB2Z2VyLmtlcm5lbC5vcmcNCj4gPj4+Pj4+IENjOiB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0DQo+ID4+Pj4+PiBTdWJqZWN0OiBSZTogW25ldF0gdGlwYzogZml4IHVzaW5n
IHNtcF9wcm9jZXNzb3JfaWQoKSBpbiBwcmVlbXB0aWJsZQ0KPiA+Pj4+Pj4NCj4gPj4+Pj4+DQo+
ID4+Pj4+Pg0KPiA+Pj4+Pj4gT24gOC8yOS8yMCAxMjozNyBQTSwgVHVvbmcgTGllbiB3cm90ZToN
Cj4gPj4+Pj4+PiBUaGUgJ3RoaXNfY3B1X3B0cigpJyBpcyB1c2VkIHRvIG9idGFpbiB0aGUgQUVB
RCBrZXknIFRGTSBvbiB0aGUgY3VycmVudA0KPiA+Pj4+Pj4+IENQVSBmb3IgZW5jcnlwdGlvbiwg
aG93ZXZlciB0aGUgZXhlY3V0aW9uIGNhbiBiZSBwcmVlbXB0aWJsZSBzaW5jZSBpdCdzDQo+ID4+
Pj4+Pj4gYWN0dWFsbHkgdXNlci1zcGFjZSBjb250ZXh0LCBzbyB0aGUgJ3VzaW5nIHNtcF9wcm9j
ZXNzb3JfaWQoKSBpbg0KPiA+Pj4+Pj4+IHByZWVtcHRpYmxlJyBoYXMgYmVlbiBvYnNlcnZlZC4N
Cj4gPj4+Pj4+Pg0KPiA+Pj4+Pj4+IFdlIGZpeCB0aGUgaXNzdWUgYnkgdXNpbmcgdGhlICdnZXQv
cHV0X2NwdV9wdHIoKScgQVBJIHdoaWNoIGNvbnNpc3RzIG9mDQo+ID4+Pj4+Pj4gYSAncHJlZW1w
dF9kaXNhYmxlKCknIGluc3RlYWQuDQo+ID4+Pj4+Pj4NCj4gPj4+Pj4+PiBGaXhlczogZmMxYjZk
NmRlMjIwICgidGlwYzogaW50cm9kdWNlIFRJUEMgZW5jcnlwdGlvbiAmIGF1dGhlbnRpY2F0aW9u
IikNCj4gPj4+Pj4+DQo+ID4+Pj4+PiBIYXZlIHlvdSBmb3Jnb3R0ZW4gJyBSZXBvcnRlZC1ieTog
c3l6Ym90KzI2M2Y4YzBkMDA3ZGMwOWIyZGRhQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20nID8N
Cj4gPj4+Pj4gV2VsbCwgcmVhbGx5IEkgZGV0ZWN0ZWQgdGhlIGlzc3VlIGR1cmluZyBteSB0ZXN0
aW5nIGluc3RlYWQsIGRpZG4ndCBrbm93IGlmIGl0IHdhcyByZXBvcnRlZCBieSBzeXpib3QgdG9v
Lg0KPiA+Pj4+Pg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+PiBBY2tlZC1ieTogSm9uIE1hbG95IDxqbWFs
b3lAcmVkaGF0LmNvbT4NCj4gPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUdW9uZyBMaWVuIDx0dW9u
Zy50LmxpZW5AZGVrdGVjaC5jb20uYXU+DQo+ID4+Pj4+Pj4gLS0tDQo+ID4+Pj4+Pj4gIG5ldC90
aXBjL2NyeXB0by5jIHwgMTIgKysrKysrKysrLS0tDQo+ID4+Pj4+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4+Pj4+Pj4NCj4gPj4+Pj4+PiBk
aWZmIC0tZ2l0IGEvbmV0L3RpcGMvY3J5cHRvLmMgYi9uZXQvdGlwYy9jcnlwdG8uYw0KPiA+Pj4+
Pj4+IGluZGV4IGMzOGJhYmFhNGU1Ny4uN2M1MjNkYzgxNTc1IDEwMDY0NA0KPiA+Pj4+Pj4+IC0t
LSBhL25ldC90aXBjL2NyeXB0by5jDQo+ID4+Pj4+Pj4gKysrIGIvbmV0L3RpcGMvY3J5cHRvLmMN
Cj4gPj4+Pj4+PiBAQCAtMzI2LDcgKzMyNiw4IEBAIHN0YXRpYyB2b2lkIHRpcGNfYWVhZF9mcmVl
KHN0cnVjdCByY3VfaGVhZCAqcnApDQo+ID4+Pj4+Pj4gIAlpZiAoYWVhZC0+Y2xvbmVkKSB7DQo+
ID4+Pj4+Pj4gIAkJdGlwY19hZWFkX3B1dChhZWFkLT5jbG9uZWQpOw0KPiA+Pj4+Pj4+ICAJfSBl
bHNlIHsNCj4gPj4+Pj4+PiAtCQloZWFkID0gKnRoaXNfY3B1X3B0cihhZWFkLT50Zm1fZW50cnkp
Ow0KPiA+Pj4+Pj4+ICsJCWhlYWQgPSAqZ2V0X2NwdV9wdHIoYWVhZC0+dGZtX2VudHJ5KTsNCj4g
Pj4+Pj4+PiArCQlwdXRfY3B1X3B0cihhZWFkLT50Zm1fZW50cnkpOw0KPiA+Pj4+Pj4NCj4gPj4+
Pj4+IFdoeSBpcyB0aGlzIHNhZmUgPw0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IEkgdGhpbmsgdGhhdCB0
aGlzIHZlcnkgdW51c3VhbCBjb25zdHJ1Y3QgbmVlZHMgYSBjb21tZW50LCBiZWNhdXNlIHRoaXMg
aXMgbm90IG9idmlvdXMuDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gVGhpcyByZWFsbHkgbG9va3MgbGlr
ZSBhbiBhdHRlbXB0IHRvIHNpbGVuY2Ugc3l6Ym90IHRvIG1lLg0KPiA+Pj4+PiBObywgdGhpcyBp
cyBub3QgdG8gc2lsZW5jZSBzeXpib3QgYnV0IHJlYWxseSBzYWZlLg0KPiA+Pj4+PiBUaGlzIGlz
IGJlY2F1c2UgdGhlICJhZWFkLT50Zm1fZW50cnkiIG9iamVjdCBpcyAiY29tbW9uIiBiZXR3ZWVu
IENQVXMsIHRoZXJlIGlzIG9ubHkgaXRzIHBvaW50ZXIgdG8gYmUgdGhlICJwZXJfY3B1IiBvbmUu
IFNvDQo+ID4+IGp1c3QNCj4gPj4+PiB0cnlpbmcgdG8gbG9jayB0aGUgcHJvY2VzcyBvbiB0aGUg
Y3VycmVudCBDUFUgb3IgJ3ByZWVtcHRfZGlzYWJsZSgpJywgdGFraW5nIHRoZSBwZXItY3B1IHBv
aW50ZXIgYW5kIGRlcmVmZXJlbmNpbmcgdG8gdGhlIGFjdHVhbA0KPiA+Pj4+ICJ0Zm1fZW50cnki
IG9iamVjdC4uLiBpcyBlbm91Z2guIExhdGVyIG9uLCB0aGF04oCZcyBmaW5lIHRvIHBsYXkgd2l0
aCB0aGUgYWN0dWFsIG9iamVjdCB3aXRob3V0IGFueSBsb2NraW5nLg0KPiA+Pj4+DQo+ID4+Pj4g
V2h5IHVzaW5nIHBlciBjcHUgcG9pbnRlcnMsIGlmIHRoZXkgYWxsIHBvaW50IHRvIGEgY29tbW9u
IG9iamVjdCA/DQo+ID4+Pj4NCj4gPj4+PiBUaGlzIG1ha2VzIHRoZSBjb2RlIHJlYWxseSBjb25m
dXNpbmcuDQo+ID4+PiBTb3JyeSBmb3IgbWFraW5nIHlvdSBjb25mdXNlZC4gWWVzLCB0aGUgY29k
ZSBpcyBhIGJpdCB1Z2x5IGFuZCBjb3VsZCBiZSBtYWRlIGluIHNvbWUgb3RoZXIgd2F5cy4uLiBU
aGUgaW5pdGlhbCBpZGVhIGlzIHRvIG5vdCB0b3VjaA0KPiBvcg0KPiA+PiBjaGFuZ2UgdGhlIHNh
bWUgcG9pbnRlciB2YXJpYWJsZSBpbiBkaWZmZXJlbnQgQ1BVcyBzbyBhdm9pZCBhIHBlbmFsdHkg
d2l0aCB0aGUgY2FjaGUgaGl0cy9taXNzZXMuLi4NCj4gPj4NCj4gPj4gV2hhdCBtYWtlcyB0aGlz
IGNvZGUgaW50ZXJydXB0IHNhZmUgPw0KPiA+Pg0KPiA+IFdoeSBpcyBpdCB1bnNhZmU/IEl0cyAi
cGFyZW50IiBvYmplY3QgaXMgYWxyZWFkeSBtYW5hZ2VkIGJ5IFJDVSBtZWNoYW5pc20uIEFsc28s
IGl0IGlzIG5ldmVyIG1vZGlmaWVkIGJ1dCBqdXN0ICJyZWFkLW9ubHkiIGluIGFsbA0KPiBjYXNl
cy4uLg0KPiANCj4gdGlwY19hZWFkX3RmbV9uZXh0KCkgaXMgX25vdF8gcmVhZC1vbmx5LCBzaW5j
ZSBpdCBjb250YWlucyA6DQo+IA0KPiAqdGZtX2VudHJ5ID0gbGlzdF9uZXh0X2VudHJ5KCp0Zm1f
ZW50cnksIGxpc3QpOw0KPiANCj4gSWYgdGlwY19hZWFkX3RmbV9uZXh0KCkgY2FuIGJlIGNhbGxl
ZCBib3RoIGZyb20gcHJvY2VzcyBjb250ZXh0IGFuZCBpcnEgY29udGV4dCwNCj4gdXNpbmcgYSBw
ZXJjcHUgdmFyaWFibGUgdG8gdHJhY2sgYSBjdXJzb3IgaW4gYSBsaXN0IGlzIHVuc2FmZS4NCk9r
LCBJJ3ZlIGdvdCB5b3VyIGNvbmNlcm4gbm93LiBBY3R1YWxseSB3aGVuIHdyaXRpbmcgdGhpcyBj
b2RlLCBJIGhhZCB0aGUgc2FtZSB0aG91Z2h0IGFzIHlvdSwgYnV0IGRlY2lkZWQgdG8gcmVsYXgg
aXQgYmVjYXVzZSBvZiB0aGUgZm9sbG93aW5nIHJlYXNvbnM6DQoxLiBJIGRvbid0IHdhbnQgdG8g
dXNlIGFueSBsb2NraW5nIG1ldGhvZHMgaGVyZSB0aGF0IGNhbiBsZWFkIHRvIGNvbXBldGl0aW9u
ICh0aHVzIGFmZmVjdCBvdmVyYWxsIHBlcmZvcm1hbmNlLi4uKTsNCjIuIFRoZSBsaXN0IGlzIG5v
dCBhbiB1c3VhbCBsaXN0IGJ1dCBhIGZpeGVkICJyaW5nIiBvZiBwZXJzaXN0ZW50IGVsZW1lbnRz
IChubyBvbmUgd2lsbCBpbnNlcnQvcmVtb3ZlIGFueSBlbGVtZW50IGFmdGVyIGl0IGlzIGNyZWF0
ZWQpOw0KMy4gSXQgZG9lcyBfbm90XyBtYXR0ZXIgYXQgYWxsIGlmIHRoZSBmdW5jdGlvbiBjYWxs
cyB3aWxsIHJlc3VsdCBpbiB0aGUgc2FtZSBlbGVtZW50LCBvciBvbmUgY2FsbCBwb2ludHMgdG8g
dGhlIDFzdCBlbGVtZW50IHdoaWxlIGFub3RoZXIgYXQgdGhlIHNhbWUgdGltZSBwb2ludHMgdG8g
dGhlIDNyZCBvbmUsIGV0Yy4gYXMgbG9uZyBhcyBpdCByZXR1cm5zIGFuIGVsZW1lbnQgaW4gdGhl
IGxpc3QuIEFsc28sIHRoZSBwZXItY3B1IHBvaW50ZXIgaXMgX25vdF8gcmVxdWlyZWQgdG8gZXhh
Y3RseSBwb2ludCB0byB0aGUgbmV4dCBlbGVtZW50LCBidXQgbmVlZHMgdG8gYmUgbW92ZWQgb24g
dGhpcyBvciBuZXh0IHRpbWUuLi4sIHNvIGp1c3QgcmVsYXhpbmchDQo0LiBJc24ndCBhICJ3cml0
ZSIgdG8gdGhlIHBlci1jcHUgdmFyaWFibGUgYXRvbWljPw0KDQo+IA0KPiBfVW5sZXNzXyBzcGVj
aWFsIGNhcmUgaXMgdGFrZW4gYnkgY2FsbGVycyB0byBtYWtlIHN1cmUgaXJxcyBhcmUgZGlzYWJs
ZWQuDQo+IA0KPiBSQ1UgZG9lcyBub3QgcHJvdGVjdCB0aGlzLCBub3Qgc3VyZSB3aHkgeW91IG1l
bnRpb24gUkNVIGF0IGFsbC4NClNvcnJ5LCBJIHdlbnQgZnVydGhlciB0aGFuIG5lY2Vzc2FyeS4u
Lg0KDQpCUi9UdW9uZw0KPiANCj4gVG8gYmUgcmUtZW50cmFudCwgZWFjaCB0aHJlYWQgc2hvdWxk
IGhhdmUgaXRzIG93biBjdXJzb3IsIHVzdWFsbHkgc3RvcmVkIGluIGFuIGF1dG9tYXRpYyB2YXJp
YWJsZSwNCj4gbm90IGluIGEgcGVyLWNwdSBsb2NhdGlvbi4NCj4gDQo+IA0KPiANCj4gDQoNCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNz
aW9uCg==
