Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDF32880BC
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Oct 2020 05:37:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQjD9-0001pL-JV; Fri, 09 Oct 2020 03:36:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kQjD7-0001p5-Ow
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 03:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DEkoM7QNLA128K4gTtJytWVqM20hZfrxS2wi4j4yFy0=; b=ANADkzq477kzU7FYMBE9rQ8f4K
 N2FWFTh8k0OK/CkatyD1Sn/T0P0PUTCFSSay9u7i3pZJgDNLLkOMwGwzDN02w3y2NDHc49HtoaH70
 qDaYiKKcyOsONVT9wu+KwZICdFsrSE7JvXm2RK+FR5dYCyQnZ3o23d+Lf61ZPgOl06ig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DEkoM7QNLA128K4gTtJytWVqM20hZfrxS2wi4j4yFy0=; b=LfPA85uKxzn78a6L0wsk/28NpI
 kxlxcdJBA5tnr2i9UW4/i9ILTOidNsIbVV4LsqrBqBnypWQTSkfyXakld0ZblM4/M4nC2Pz6l1+j1
 H0RosDNHk0KYKXgDrQBqU3GVaF/jCq2WntDCX08/Po/4+gwQCzokeADj0FzUMTZZFUiA=;
Received: from mail-eopbgr60137.outbound.protection.outlook.com
 ([40.107.6.137] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQjCx-003j60-UZ
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 03:36:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lnd6BAAQt+S55rm1lPQkR/qot1xtihP/7iEa5jqQpYn/YGPRV5VKPfXQke7xsf3WTEbt8xiLbMMWRCi1YuFW7RfdYu7t4n2gEGMDPdRHAuO1KiLWlP282247PcjBQPbLvjTlTCKhIL23C1Sh9T9J7REHVJZQgU+d/j/M8K9YdvTX0IID6wRukRdGNFb+y8waxXbZf7t9eQA0FeG0K4KGu6zrdUfv4nrsKghT+DwdqiH3CZPM/NNH1mxoROj3QAv0axT55pvCUUWFGrtrq9tlS4lvGV4u2fcjLdCfRLBE4/WErntWmIzH+j0BKcIuui24YP/v1uJdYGjaU7W2qnmCqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEkoM7QNLA128K4gTtJytWVqM20hZfrxS2wi4j4yFy0=;
 b=hZecBFdRtxiw3/km6q65nU6QVAbMbQ5qgBiOq7KFFTHJ1Pdl1nCh3G6xeowYt0xJhAXMRmtFp8oZvOZzJyAyrkjIBwkVXaXAmDtnmIU35Q2sPX5+RG54feKxIRmRSrhHzwyTNNdIpIc1jwKfXChd3DhsqGEu+ZDef5saB0G586Gc5L5wpxiKh57CaxWEm/9C+eKhu4JKeeAufZTM1Exx8k4rR7OlVMvpb1/oHMLFX/hxFP7K8nCpBJz5bMhalw1PQPbF+u23dsw9sszMmi1lckV2eXQpmjzEKidmkt7TkOUUfc8zHQAbdKwa3wCTxW+cOeCxWWnc9kR3CnKpvkjY9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEkoM7QNLA128K4gTtJytWVqM20hZfrxS2wi4j4yFy0=;
 b=JZVL+pt/A7fptktTRfm//quhQ/OUDkhzDhWqpbDdY8X7ypG2N72LdTT/w4J4Uhpg+prVePixXXzgBVJ0ownbCyvzEI+XsV78X2UpS2yPD+70mDENevqd76MlOC3AYgCP85tQEO3Q1+Kf7PG8/oS8VMv7swUXY76WBG/cNbCH4aU=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6703.eurprd05.prod.outlook.com (2603:10a6:800:142::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.26; Fri, 9 Oct
 2020 03:36:30 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3433.045; Fri, 9 Oct 2020
 03:36:30 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: introduce smooth change to replicast
Thread-Index: AQHWnRng+9GxgYPC/E2EAt+Yn5/UsqmOByOAgACSx5A=
Date: Fri, 9 Oct 2020 03:36:30 +0000
Message-ID: <VI1PR05MB46055EEDB75E7F42CDD0B786F1080@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20201008022219.8212-1-hoang.h.le@dektech.com.au>
 <d34511c4-b6b0-3853-bc20-bab460eefc46@redhat.com>
In-Reply-To: <d34511c4-b6b0-3853-bc20-bab460eefc46@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a48e1259-d837-4318-c70d-08d86c048319
x-ms-traffictypediagnostic: VI1PR05MB6703:
x-microsoft-antispam-prvs: <VI1PR05MB6703FE6580385CB8A4229F2DF1080@VI1PR05MB6703.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:165;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V6DjMLPOb39z1NW3wIbBob2vG6UBxbYghp9PJyaj3Udx9Na34pzoNbqNG+E/uyaiH6xOUsx4+xLHS7PUpaAZfg0P7QfRj0pxm/bqEsmMF3E7Nb2NBG+tpG9ahyolVni6rjiOvqGTPJgJFJdElee9YKQDzDGPUE1obmlmVV3BrMpvYHSndvIEmHVcgljB7i5qQXjC8JngS9/Z7/kkGE4xE2HZ/OyFS6h3IhmHl7RRVtqf8PKAgoTa2urbDfR1/kgQb7LtmyVxvMTSiLFDXlcYdbSgBCrZbKJ8O0BWj5k1dLuUFrPduvn7VH3CBrmwuU69
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(39840400004)(366004)(396003)(33656002)(26005)(186003)(5660300002)(6506007)(53546011)(86362001)(52536014)(316002)(66446008)(66476007)(7696005)(66946007)(76116006)(110136005)(9686003)(2906002)(83380400001)(8676002)(64756008)(71200400001)(66556008)(478600001)(55016002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: KmHjf471vUoGyokRI3O22+DobnIIfRoYA17ATTWxoOExKnHRajJPVLP5VLadC0s7EMKGixIqm7eR2b3lWW1dl7SMTswLhy10qJHROVSdPfQvXrEKDmXGIqFfkRbE2Ta4wvtxTbzSr5Z5NrbkiQRoYo/g7UXV1QyqXYxauUKz8XKXGcuFfBgGRK2oGIFfEBbyGMzCluR945sZydALPdPohQvtUc5QOhCFtc3QbtPbmlYVk6iQdvereypDRcac8acRAjIrI6EOzk5oXBIOOngAvmmpQm77kvqWC80/36axBtkGD4V9YxcMrO6Lm22jAj9a4pxjLUU+N2ZuX28/b4JRLpG9ndh037Ezv6nC8Llp8FGpFQ59gu64ZTfjnK73jRnaOMHZsCa2A4juOPxjDcO0Z9EM2uHGjvor7uYcbFLyLddL3uK6tgH59/0BWFiC90v+McMsvBHwlY8no0H98olLZANGSiU1jnCqIV/wu47unW3hKOOEd06fz/HGGmV3p2xIgu3UcIlZSWLzSXMg/a8NpyUAofg4bIrkhCiWsS8WStGpPIcvyWvE7x/kfbPEdq5H6JR7+TbUHppvXYruxcObSFDmd88LSHko9Ho6cfg/bB4rOws+s1dkJ/5c3in83CtILYd6vgM2qKjkrCLFeQ5xbg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a48e1259-d837-4318-c70d-08d86c048319
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 03:36:30.5980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A9SPN8CUVxQ7aEpR47ul22vQj8hujjLixI62ARBmt+9LRxEYt6v5ABtRkaC9I5HbOvCgf/cZCs0JtSjOWTk/TKnqJjnjebw7NasIuBg3L0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6703
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.137 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQjCx-003j60-UZ
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgSm9uLA0KDQpTZWUgbXkgaW5saW5lIGNvbW1lbnQuDQoNClRoYW5rcywNCkhvYW5nDQo+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvbiBNYWxveSA8am1hbG95QHJlZGhh
dC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgT2N0b2JlciA5LCAyMDIwIDE6MjcgQU0NCj4gVG86IEhv
YW5nIEh1dSBMZSA8aG9hbmcuaC5sZUBkZWt0ZWNoLmNvbS5hdT47IG1hbG95QGRvbmpvbm4uY29t
OyB5aW5nLnh1ZUB3aW5kcml2ZXIuY29tOyB0aXBjLQ0KPiBkaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldA0KPiBTdWJqZWN0OiBSZTogW25ldC1uZXh0XSB0aXBjOiBpbnRyb2R1Y2Ugc21v
b3RoIGNoYW5nZSB0byByZXBsaWNhc3QNCj4gDQo+IA0KPiANCj4gT24gMTAvNy8yMCAxMDoyMiBQ
TSwgSG9hbmcgSHV1IExlIHdyb3RlOg0KPiA+IEluIGNvbW1pdCBjYWQyOTI5ZGM0MzIgKCJ0aXBj
OiB1cGRhdGUgYSBiaW5kaW5nIHNlcnZpY2UgdmlhIGJyb2FkY2FzdCIpLA0KPiA+IFdlIHVzZSBi
cm9hZGNhc3QgdG8gdXBkYXRlIGEgYmluZGluZyBzZXJ2aWNlIGZvciBhIGxhcmdlIGNsdXN0ZXIu
DQo+ID4gSG93ZXZlciwgaWYgd2UgdHJ5IHRvIHB1Ymxpc2ggYSB0aG91c2FuZHMgb2Ygc2Vydmlj
ZXMgYXQgdGhlDQo+ID4gc2FtZSB0aW1lLCB3ZSBtYXkgdG8gZ2V0ICJsaW5rIG92ZXJmbG93IiBo
YXBwZW4gYmVjYXVzZSBvZiBxdWV1ZSBsaW1pdA0KPiA+IGhhZCByZWFjaGVkLg0KPiA+DQo+ID4g
V2Ugbm93IGludHJvZHVjZSBhIHNtb290aCBjaGFuZ2UgdG8gcmVwbGljYXN0IGlmIHRoZSBicm9h
ZGNhc3QgbGluayBoYXMNCj4gPiByZWFjaCB0byB0aGUgbGltaXQgb2YgcXVldWUuDQo+IFRvIG1l
IHRoaXMgYmVhdHMgdGhlIHdob2xlIHB1cnBvc2Ugb2YgdXNpbmcgYnJvYWRjYXN0IGRpc3RyaWJ1
dGlvbiBpbg0KPiB0aGUgZmlyc3QgcGxhY2UuDQo+IFdlIHdhbnRlZCB0byBzYXZlIENQVSBhbmQg
bmV0d29yayByZXNvdXJjZXMgYnkgdXNpbmfCoCBicm9hZGNhc3QsIGFuZA0KPiB0aGVuLCB3aGVu
IHRoaW5ncyBnZXQgdG91Z2gsIHdlIGZhbGwgYmFjayB0byB0aGUgc3VwcG9zZWRseSBsZXNzDQo+
IGVmZmljaWVudCByZXBsaWNhc3QgbWV0aG9kLiBOb3QgZ29vZC4NCj4gDQo+IEkgd29uZGVyIHdo
YXQgaXMgcmVhbGx5IGhhcHBlbmluZyB3aGVuIHRoaXMgb3ZlcmZsb3cgc2l0dWF0aW9uIG9jY3Vy
cy4NCj4gRmlyc3QsIHRoZSByZXNldCBsaW1pdCBpcyBkaW1lbnNpb25lZCBzbyB0aGF0IGl0IHNo
b3VsZCBiZSBwb3NzaWJsZSB0bw0KPiBwdWJsaXNoIE1BWF9QVUJMSUNBVElPTlMgKDY1aykgcHVi
bGljYXRpb25zIGluIG9uZSBzaG90Lg0KPiBXaXRoIGZ1bGwgYnVuZGxpbmcsIHdoaWNoIGlzIHdo
YXQgSSBleHBlY3QgaGVyZSwgdGhlcmUgYXJlIDE0NjAvMjAgPSA3Mw0KPiBwdWJsaWNhdGlvbiBp
dGVtcyBpbiBlYWNoIGJ1ZmZlciwgc28gdGhlIHJlc2V0IGxpbWl0ICg9PW1heF9idWxrKSBzaG91
bGQNCj4gYmUgNjVrLzczID0gODk3IGJ1ZmZlcnMuDQoNCltIb2FuZ10gTm8sIGl0J3Mgbm90IHJp
Z2h0IQ0KQXMgSSBzdGFnZWQgaW4gYW5vdGhlciBjb21taXQgdGhhdCB0aGUgcmVzZXQgbGltaXQg
aXMgMzUwIGJ1ZmZlcnMgKDY1ay8oMzc0NC8yMCkpID0+ICMxLg0Kd2hlcmU6DQpGQl9NVFU9Mzc0
NA0KYW5kIGlmIGEgdXNlciBzZXQgd2luZG93IHNpemUgaXMgNTAsIHdlIGFyZSBmYWxsYmFjayB0
byAzMiB3aW5kb3ctc2l6ZSA9PiAjMi4gDQpTbywgaWYgdGhlIGJyb2FkY2FzdCBsaW5rIGlzIHVu
ZGVyIGhpZ2ggbG9hZCB0cmFmZmljLCB3ZSB3aWxsIHJlYWNoIHRvIHRoZSBsaW1pdCBlYXNpbHkg
KCMxICsgIzIpLg0KDQo+IE15IGZpZ3VyZXMgYXJlIGp1c3QgZnJvbSB0aGUgdG9wIG9mIG15IGhl
YWQsIHNvIHlvdSBzaG91bGQgZG91YmxlIGNoZWNrDQo+IHRoZW0sIGJ1dCBJIGZpbmQgaXQgdW5s
aWtlbHkgdGhhdCB3ZSBoaXQgdGhpcyBsaW1pdCB1bmxlc3MgdGhlcmUgaXMgYQ0KPiBsb3Qgb2Yg
b3RoZXIgYnJvYWRjYXN0IGdvaW5nIG9uIGF0IHRoZSBzYW1lIHRpbWUsIGFuZCBldmVuIHRoZW4g
SSBmaW5kDQo+IGl0IHVubGlrZWx5Lg0KW0hvYW5nXQ0KSSBqdXN0IGltcGxlbWVudCBhIHNpbXBs
ZSBhcHBsaWNhdGlvbjoNClsuLi5dDQpudW1fc2VydmljZSA9IDEwaw0KZm9yIChpPTA7aTxudW1f
c2VydmljZTsgaSsrKQ0KICAgIGJpbmQoc29ja2V0LCBzZXJ2aWNlPGk+KTsNClsuLi5dDQoNClRo
ZW4sIHJ1biB0aGlzIGFwcDsgc2xlZXAgMjsga2lsbCBTSUdJTlQgYXBwOyBUaGVuLCB0aGUgcHJv
YmxlbSBpcyByZXByb2R1Y2libGUuDQogDQo+IEkgc3VnZ2VzdCB5b3UgdHJ5IHRvIGZpbmQgb3V0
IHdoYXQgaXMgcmVhbGx5IGdvaW5nIG9uIHdoZW4gd2UgcmVhY2ggdGhpcw0KPiBzaXR1YXRpb24u
DQo+IC1XaGF0IGV4YWN0bHkgaXMgaW4gdGhlIGJhY2tsb2cgcXVldWU/DQo+IC1Pbmx5IHB1Ymxp
Y2F0aW9ucz8NCj4gLUhvdyBtYW55Pw0KPiAtQSBtaXh0dXJlIG9mIHB1YmxpY2F0aW9ucyBhbmQg
b3RoZXIgdHJhZmZpYz8NCk9ubHkgcHVibGljYXRpb24vd2l0aGRyYXduIGJ1ZmZlcnMsIGFyb3Vu
ZCBtb3JlIHRob3VzYW5kcy4NCg0KPiAtSGFzIGJ1bmRsaW5nIHJlYWxseSB3b3JrZWQgYXMgc3Vw
cG9zZWQ/DQo+IC1EbyB3ZSBzdGlsbCBoYXZlIHNvbWUgaXNzdWUgd2l0aCB0aGUgYnJvYWRjYXN0
IGxpbmsgdGhhdCBzdG9wcyBidWZmZXJzDQo+IGJlaW5nIGFja2VkIGFuZCByZWxlYXNlZCBpbiBh
IHRpbWVseSBtYW5uZXI/DQo+IC0gSGF2ZSB5b3UgYmVlbiBhYmxlIHRvIGR1bXAgb3V0IHN1Y2gg
aW5mbyB3aGVuIHRoaXMgcHJvYmxlbSBvY2N1cnM/DQo+IC0gQXJlIHlvdSBhYmxlIHRvIHJlLXBy
b2R1Y2UgaXQgaW4geW91ciBvd24gc3lzdGVtPw0KVGhlc2UgYW5zd2VycyBhcmUgWUVTDQoNCj4g
SW4gdGhlIGVuZCBpdCBtaWdodCBiZSBhcyBzaW1wbGUgYXMgaW5jcmVhc2luZyB0aGUgcmVzZXQg
bGltaXQsIGJ1dCB3ZQ0KPiByZWFsbHkgc2hvdWxkIHRyeSB0byB1bmRlcnN0YW5kIHdoYXQgaXMg
aGFwcGVuaW5nIGZpcnN0Lg0KWWVzLCBJIHRoaW5rIHNvLiBBcyBwcmV2aW91cyBwYXRjaCBJIG1h
ZGUgdGhlIGNvZGUgY2hhbmdlIHRvIHVwZGF0ZSBxdWV1ZSBiYWNrbG9nIHN1cHBvcnRpbmcgdG8g
ODczIGJ1ZmZlcnMuDQpCdXQgaWYgSSBpbmNyZWFzZSBudW1iZXIgb2Ygc2VydmljZXMgaW4gbXkg
YXBwIHVwIHRvIDIwayAobm90IHJlYWw/Pz4pIC4gVGhlIGlzc3VlIGlzIGFibGUgdG8gcmVwcm9k
dWNlIGFzIHdlbGwuDQpUaGF0IGlzIHRoZSByZWFzb24gd2h5IEkgcHJvcG9zZSB0aGlzIG5ldyBz
b2x1dGlvbiArIGNvbWJpbmUgd2l0aCB0d28gcHJldmlvdXMgcGF0Y2hlcyB0byBzb2x2ZSB0aGUg
cHJvYmxlbSBjb21wbGV0ZWx5Lg0KPiANCj4gUmVnYXJkcw0KPiAvLy9qb24NCj4gDQo+IA0KPiA+
DQo+ID4gU2lnbmVkLW9mZi1ieTogSG9hbmcgSHV1IExlIDxob2FuZy5oLmxlQGRla3RlY2guY29t
LmF1Pg0KPiA+IC0tLQ0KPiA+ICAgbmV0L3RpcGMvbGluay5jIHwgIDUgKysrKy0NCj4gPiAgIG5l
dC90aXBjL25vZGUuYyB8IDEyICsrKysrKysrKystLQ0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL25l
dC90aXBjL2xpbmsuYyBiL25ldC90aXBjL2xpbmsuYw0KPiA+IGluZGV4IDA2Yjg4MGRhMmE4ZS4u
Y2E5MDhlYWQ3NTNhIDEwMDY0NA0KPiA+IC0tLSBhL25ldC90aXBjL2xpbmsuYw0KPiA+ICsrKyBi
L25ldC90aXBjL2xpbmsuYw0KPiA+IEBAIC0xMDIyLDcgKzEwMjIsMTAgQEAgaW50IHRpcGNfbGlu
a194bWl0KHN0cnVjdCB0aXBjX2xpbmsgKmwsIHN0cnVjdCBza19idWZmX2hlYWQgKmxpc3QsDQo+
ID4gICAJLyogQWxsb3cgb3ZlcnN1YnNjcmlwdGlvbiBvZiBvbmUgZGF0YSBtc2cgcGVyIHNvdXJj
ZSBhdCBjb25nZXN0aW9uICovDQo+ID4gICAJaWYgKHVubGlrZWx5KGwtPmJhY2tsb2dbaW1wXS5s
ZW4gPj0gbC0+YmFja2xvZ1tpbXBdLmxpbWl0KSkgew0KPiA+ICAgCQlpZiAoaW1wID09IFRJUENf
U1lTVEVNX0lNUE9SVEFOQ0UpIHsNCj4gPiAtCQkJcHJfd2FybigiJXM8JXM+LCBsaW5rIG92ZXJm
bG93IiwgbGlua19yc3RfbXNnLCBsLT5uYW1lKTsNCj4gPiArCQkJcHJfd2Fybl9yYXRlbGltaXRl
ZCgiJXM8JXM+LCBsaW5rIG92ZXJmbG93IiwNCj4gPiArCQkJCQkgICAgbGlua19yc3RfbXNnLCBs
LT5uYW1lKTsNCj4gPiArCQkJaWYgKGxpbmtfaXNfYmNfc25kbGluayhsKSkNCj4gPiArCQkJCXJl
dHVybiAtRU9WRVJGTE9XOw0KPiA+ICAgCQkJcmV0dXJuIC1FTk9CVUZTOw0KPiA+ICAgCQl9DQo+
ID4gICAJCXJjID0gbGlua19zY2hlZHVsZV91c2VyKGwsIGhkcik7DQo+ID4gZGlmZiAtLWdpdCBh
L25ldC90aXBjL25vZGUuYyBiL25ldC90aXBjL25vZGUuYw0KPiA+IGluZGV4IGQyNjllYmUzODJl
MS4uYTM3OTc2NjEwMzY3IDEwMDY0NA0KPiA+IC0tLSBhL25ldC90aXBjL25vZGUuYw0KPiA+ICsr
KyBiL25ldC90aXBjL25vZGUuYw0KPiA+IEBAIC0xNzUwLDE1ICsxNzUwLDIzIEBAIHZvaWQgdGlw
Y19ub2RlX2Jyb2FkY2FzdChzdHJ1Y3QgbmV0ICpuZXQsIHN0cnVjdCBza19idWZmICpza2IsIGlu
dCByY19kZXN0cykNCj4gPiAgIAlzdHJ1Y3QgdGlwY19ub2RlICpuOw0KPiA+ICAgCXUxNiBkdW1t
eTsNCj4gPiAgIAl1MzIgZHN0Ow0KPiA+ICsJaW50IHJjID0gMDsNCj4gPg0KPiA+ICAgCS8qIFVz
ZSBicm9hZGNhc3QgaWYgYWxsIG5vZGVzIHN1cHBvcnQgaXQgKi8NCj4gPiAgIAlpZiAoIXJjX2Rl
c3RzICYmIHRpcGNfYmNhc3RfZ2V0X21vZGUobmV0KSAhPSBCQ0xJTktfTU9ERV9SQ0FTVCkgew0K
PiA+ICsJCXR4c2tiID0gcHNrYl9jb3B5KHNrYiwgR0ZQX0FUT01JQyk7DQo+ID4gKwkJaWYgKCF0
eHNrYikNCj4gPiArCQkJZ290byByY2FzdDsNCj4gPiAgIAkJX19za2JfcXVldWVfaGVhZF9pbml0
KCZ4bWl0cSk7DQo+ID4gLQkJX19za2JfcXVldWVfdGFpbCgmeG1pdHEsIHNrYik7DQo+ID4gLQkJ
dGlwY19iY2FzdF94bWl0KG5ldCwgJnhtaXRxLCAmZHVtbXkpOw0KPiA+ICsJCV9fc2tiX3F1ZXVl
X3RhaWwoJnhtaXRxLCB0eHNrYik7DQo+ID4gKwkJcmMgPSB0aXBjX2JjYXN0X3htaXQobmV0LCAm
eG1pdHEsICZkdW1teSk7DQo+ID4gKwkJaWYgKHJjID09IC1FT1ZFUkZMT1cpDQo+ID4gKwkJCWdv
dG8gcmNhc3Q7DQo+ID4gKwkJa2ZyZWVfc2tiKHNrYik7DQo+ID4gICAJCXJldHVybjsNCj4gPiAg
IAl9DQo+ID4NCj4gPiArcmNhc3Q6DQo+ID4gICAJLyogT3RoZXJ3aXNlIHVzZSBsZWdhY3kgcmVw
bGljYXN0IG1ldGhvZCAqLw0KPiA+ICAgCXJjdV9yZWFkX2xvY2soKTsNCj4gPiAgIAlsaXN0X2Zv
cl9lYWNoX2VudHJ5X3JjdShuLCB0aXBjX25vZGVzKG5ldCksIGxpc3QpIHsNCg0KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
