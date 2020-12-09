Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF6F2D3FDD
	for <lists+tipc-discussion@lfdr.de>; Wed,  9 Dec 2020 11:29:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmwiq-00025H-4F; Wed, 09 Dec 2020 10:29:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kmwio-000257-Dy
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Dec 2020 10:29:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kmMO/GNgbyyqvrnmfnLYaZhDJhbpLn9gx7mnHtC0U5c=; b=aOlpTr2fBg5QVdS1T637BqDEPc
 lcK6sxpO87uU1UPNHv02EmEo9S4KJbzij6TPY91/QiMvFZlF4baEwNouL40IYc38oO74+m6+bIZ0Z
 R7YHiJeZMVyF6JhYZFv5sYvsAHEOIUDi8ItiMyhkyo2zLqD/fWGS2DUx02nZQhX6gvEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kmMO/GNgbyyqvrnmfnLYaZhDJhbpLn9gx7mnHtC0U5c=; b=JZBiNn+EI+j1Io0hf5fsIIxLU7
 swZey1uF/KNWNtRsmGzqbGVdKHlKb/bGV7yVnSO59xp8UgfgBru87V3J7EjpvdK+RsFupG1D2G285
 gJ52PbXcBfshUqDEeeAwCe7LmOjcxKaWBComFm1o/fYzPgUhrD2iQTqgL+bOgFGZh3xE=;
Received: from mail-eopbgr20096.outbound.protection.outlook.com ([40.107.2.96]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kmwif-007c2J-3i
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Dec 2020 10:29:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KijZF08Bl3eNJo2swoSajYhkjNI3d1Po62sjy6qs74pXWsBD2jByPxikxlqRy5aEn1dd4/3/S+yoXWQu6nlfEyB5XIjFeeSoZp7eg1vBZ3PJxtwuqvBdxc+5/qml1bXF4FfVCwP45O9Um/PABaa8qTJ4g/iryX7C88vHueF3v9rUI7G+WPEP1iqtLEQzCzZ6gNX6KfQ1MdAq2JuWiljOGt4H/Ex7dEp52M1EeWw/ynPGwm4RgEOnOJyg+gqI5UzcP+zb2e3QRNkWEtFVVYq6Yu8FH5pAUvGDdIku6ROqWZGLjwyCb4dUrLGMyaCj8TEYDb5DGtRb1YLBz2a+JZlu7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kmMO/GNgbyyqvrnmfnLYaZhDJhbpLn9gx7mnHtC0U5c=;
 b=k94ewa5gdt6t5IoEoBwxw0qLNQil8JgfxAtbxgzPPUoUpOatj9UL6ra5SYAp/0lCNJ21rwQECfyIeaR9FnTI6hlFotJ1PxE6708EGQc/szflCoWMiu3CdkRAvH0/qQBTa95LlhQn26+w/R1YW6FAOL/YUdR442+INW9IaTOMeSVJ+dCuQfDjge97jb3wt9qmjNzb5onC64q6XS5vTYxTzREVjCWgqveBTSGiKm9XT0nZts1NLFReg+dWhgyRWO8r+3lXGTHwicHpowCpq4aFdm1dFPNvPOeI+QrcDpNpLMlUSvY6SAnrimowWG114/FTT4wcmM37s2e1CWhv1kdm7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kmMO/GNgbyyqvrnmfnLYaZhDJhbpLn9gx7mnHtC0U5c=;
 b=kL7eD7WlDQULZwredtu/vVD7SbtWASoUIgfIRwJS+rdYZB2cVBe35Oe5HYpZ6nkbztlrI9r26Hd36XPf5iYJwidYXEszVEjT3M75NUsF6Ab+7B1Rp3GKl+g7frME4fA1v5Kfr80diIeJrjUhGsE5hhn8PRDmlpI1QQXrmaB8ryU=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB3949.eurprd05.prod.outlook.com (2603:10a6:803:26::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Wed, 9 Dec
 2020 10:29:03 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3632.023; Wed, 9 Dec 2020
 10:29:02 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>
Thread-Topic: BUG: rwlock bad magic on CPU, kworker/0:LINE/NUM, ADDR
Thread-Index: AQHWzhUa0H+FkkwIAU2N44irsVJzd6nujyjw
Date: Wed, 9 Dec 2020 10:29:02 +0000
Message-ID: <VI1PR05MB4605AFBB7E8FD8E6CC3B1A4DF1CC0@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <CACT4Y+bhEC6aHBs-2qa76kGaCQ4=0v7Hi_bXwu_5air5seBLpQ@mail.gmail.com>
 <3f53ff8c-16a7-3fe4-1e3b-d6afbb6a9de7@redhat.com>
In-Reply-To: <3f53ff8c-16a7-3fe4-1e3b-d6afbb6a9de7@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df8dfc49-3613-4e25-e3b4-08d89c2d3fae
x-ms-traffictypediagnostic: VI1PR0502MB3949:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB39492454F485C6B8FE9E4D54F1CC0@VI1PR0502MB3949.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ge1oF+YdKWkZPXtR8jp40jH3gFy/diYpqZczPyVUFhKx9s77tiXgkAiJjyo+4rDsoGTP2ceIQUHLct55PXmcur+DmnQfFig2xvepJ1gssYrgZl8HRngH/AddmNbWE6sCOX/NQFpXNon/jfzgaByibqozlj7LCz95+b1qT1A5s+A+iQn+KHOTbGJIEfFDv+9S88hBlmzhDPS+NPhU7ftsVUvAvBl7iCIDhe/VV/rPMyLbpnnNUkSmIZgxSNKa1A8SvNq9AahtNtFU44fMzkhji+rYbsSKyrsQdo/F0S6QIpOQB4gJk06REWkBqQsTg4uUtuEzA/bpR1hhQGC9riw4o7vmIrJOZ5UXHAxfrl2E72vy7KMZzHsIeaxSGA3TPFOjGPunhLT9zcB0nU92XhSsVw8KuN6BFqbMDVF2vpdXftdtXxrWZX4Y14bbffJ+wRlM7DzehYQjxZXWrv9J7s5D7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(376002)(86362001)(9686003)(6506007)(76116006)(53546011)(55016002)(6916009)(71200400001)(33656002)(7696005)(166002)(54906003)(9326002)(26005)(2906002)(107886003)(966005)(8676002)(5660300002)(66556008)(66446008)(66946007)(66476007)(64756008)(8936002)(186003)(52536014)(83380400001)(4326008)(508600001)(99710200001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?akNVZkZXaExhbUdzNHRpSkM1N2t4TytaMndaZExPYlgxeXpYeW42cm9HWEo0?=
 =?utf-8?B?dGFpU1ZXMmp6VGlEaXZ1Q0g1aUs2N2xSVmZDMW9TaTQrVlV1bTNxdDdtUHZk?=
 =?utf-8?B?N3FMcUNUUnF2UjJmb3I5SDl2UDJkbmFNTnJpT2xjM1V2RXhVZE4xeDJsN1JG?=
 =?utf-8?B?MjVoQTVYK1BheHdCQmVYTTQ2eTNRdFZQWVRQVlp1MlR6a2d4TVFwME5tbkpC?=
 =?utf-8?B?N0crYUxYODV2c28rdlZVUnQzNWdxUGF2WVZCWnplUWFQRjBrREh3eUc4NFZ1?=
 =?utf-8?B?Q1BzTnFYcm9oQWhlclZxK1VCVWZxUU40ZEE3SUIvMWlEOW84Z0tDTnFtcjJs?=
 =?utf-8?B?MlBKWE9vb2xuOFBzT3MvS21JRzZXbklpTDZiYmRQbGhBMzY5SGgvdUNpZmN0?=
 =?utf-8?B?R084d1hXUE1RbDFURjVLUVlQS3ByVEhoRFhldHFmemU4Qk5YUUFUVk1KRk9h?=
 =?utf-8?B?SnZFaFRKaXFJTGpvaVhoeVA4OVZJQUZURXJpTnZRQ1BEaTdGQTVIT0FlYXJE?=
 =?utf-8?B?RnNRZjNhQUFZbVZEWERKcUNYbmRMay9jcm9kZEtSU0xUMGF2NEFHNHVGVUZ3?=
 =?utf-8?B?Zk1PRVRXZTFid1hTRzlpdTV4Qzk3S1l5OTJiZCs2dFE3czFsVnVOanB4TEdP?=
 =?utf-8?B?WTQ4RWpuSDNDbWNQVWMya0x5eVpzTTZhcVlmUlNtSkZDZGJIK29xdXJCcXYr?=
 =?utf-8?B?Ri9xMXh5eTJ4cHljaHIxaDg1QXpEaXNCUkd4UW1IYnlTbnVDVWJpZkVYWUFw?=
 =?utf-8?B?NHUwRU1OQ0hKRTcrWjJCU1ZKTW5WNUExNUYrNWw0c05jTit4UDNJS2NXM0tq?=
 =?utf-8?B?L0ZaM1JnZnc3NDJNL1FlZWlJMDMvTmE4Q2RvTUlVdlFWOHV0VWdxcmZaaW9t?=
 =?utf-8?B?MkdzWnBNMTdsM1JtTnZKVmxSMDkxZmphUU12K0c5bmtRTzZ4a1gvR1h1c1Rr?=
 =?utf-8?B?dVhIMnp0ZldSNkZiUkx5SVpHdFF6SEtTUVdHRXRRRjhEMXNsRkg3Q1NpODg4?=
 =?utf-8?B?Z1MweGVGU21nc0c4WWY5b3dZbUtpdStPU09RZDZ4TVl5clUxenF6Q3RQUGkz?=
 =?utf-8?B?YXhwV3FvMlVWOFRSUC9LSnBZdU05bWxIOFJBNlo0T3NNQUh6eExURm9VK01K?=
 =?utf-8?B?WXVZRTZBQmlMU2ZnUGFZSDI1bm5lNGhOQjNMdkRZNVFneXMxWlRpS0hnUDJs?=
 =?utf-8?B?WFhDb3FDaDgycElpZloyckR2TDlLdXNBMmNobVVNSThpeldMRE9Lb2sxcEtJ?=
 =?utf-8?B?akw5d3JmaFM0RVVNTmdQWlQzRURsVW90OTV0dkhXS1lGdHJLcW51OGpmSHRR?=
 =?utf-8?Q?F4YYa4MgbB5NQ=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df8dfc49-3613-4e25-e3b4-08d89c2d3fae
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 10:29:02.6583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ZjbbfHxOeg5PvfCeeFYRjxQCg9OgvzuDowUqXp88dOwLbxXL3rNq2h39WwQVkjJuZo+3yhYyUgbVPzT+13PYDYKuzZ7DYTKpjulI3j2q+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3949
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.96 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.2.96 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kmwif-007c2J-3i
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] BUG: rwlock bad magic on CPU,
 kworker/0:LINE/NUM, ADDR
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
Cc: tipc-dek <tipc-dek@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgSm9uLA0KDQpTZWUgbXkgaW5saW5lIGNvbW1lbnQg4oCmDQoNClJlZ2FyZHMsDQpIb2FuZw0K
RnJvbTogSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4NClNlbnQ6IFdlZG5lc2RheSwgRGVj
ZW1iZXIgOSwgMjAyMCA1OjIyIFBNDQpUbzogSG9hbmcgSHV1IExlIDxob2FuZy5oLmxlQGRla3Rl
Y2guY29tLmF1Pg0KQ2M6IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7IHRp
cGMtZGVrIDx0aXBjLWRla0BkZWt0ZWNoLmNvbS5hdT4NClN1YmplY3Q6IEZ3ZDogQlVHOiByd2xv
Y2sgYmFkIG1hZ2ljIG9uIENQVSwga3dvcmtlci8wOkxJTkUvTlVNLCBBRERSDQoNCkhpIEhvYW5n
LA0KVGhpcyB3YXMgdGhlIG9uZSBJIGhhZCBpbiBtaW5kLiBUbyBtZSBpdCBsb29rcyBsaWtlIHdl
IHN0aWxsIGhhdmUgYSBwcm9ibGVtLg0KDQovLy9qb24NCg0KDQotLS0tLS0tLSBGb3J3YXJkZWQg
TWVzc2FnZSAtLS0tLS0tLQ0KU3ViamVjdDoNClJlOiBCVUc6IHJ3bG9jayBiYWQgbWFnaWMgb24g
Q1BVLCBrd29ya2VyLzA6TElORS9OVU0sIEFERFINCkRhdGU6DQpNb24sIDMwIE5vdiAyMDIwIDEy
OjM1OjMwICswMTAwDQpGcm9tOg0KRG1pdHJ5IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPjxt
YWlsdG86ZHZ5dWtvdkBnb29nbGUuY29tPg0KVG86DQpzeXpib3QgPHN5emJvdCtjYjk4N2E5Yzc5
NmFiYzU3MGI0N0BzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tPjxtYWlsdG86c3l6Ym90K2NiOTg3
YTljNzk2YWJjNTcwYjQ3QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20+DQpDQzoNCkRhdmlkIE1p
bGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD48bWFpbHRvOmRhdmVtQGRhdmVtbG9mdC5uZXQ+LCBq
bWFsb3lAcmVkaGF0LmNvbTxtYWlsdG86am1hbG95QHJlZGhhdC5jb20+LCBKYWt1YiBLaWNpbnNr
aSA8a3ViYUBrZXJuZWwub3JnPjxtYWlsdG86a3ViYUBrZXJuZWwub3JnPiwgTEtNTCA8bGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZz48bWFpbHRvOmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc+LCBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+PG1haWx0bzpuZXRkZXZAdmdlci5r
ZXJuZWwub3JnPiwgc3l6a2FsbGVyLWJ1Z3MgPHN5emthbGxlci1idWdzQGdvb2dsZWdyb3Vwcy5j
b20+PG1haWx0bzpzeXprYWxsZXItYnVnc0Bnb29nbGVncm91cHMuY29tPiwgdGlwYy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDxtYWlsdG86dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldD4sIFlpbmcgWHVlIDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPjxtYWlsdG86
eWluZy54dWVAd2luZHJpdmVyLmNvbT4NCg0KDQpPbiBNb24sIE5vdiAzMCwgMjAyMCBhdCAxMjoz
MyBQTSBzeXpib3QNCjxzeXpib3QrY2I5ODdhOWM3OTZhYmM1NzBiNDdAc3l6a2FsbGVyLmFwcHNw
b3RtYWlsLmNvbT48bWFpbHRvOnN5emJvdCtjYjk4N2E5Yzc5NmFiYzU3MGI0N0BzeXprYWxsZXIu
YXBwc3BvdG1haWwuY29tPiB3cm90ZToNCg0KDQoNCg0KSGVsbG8sDQoNCg0KDQpzeXpib3QgZm91
bmQgdGhlIGZvbGxvd2luZyBpc3N1ZSBvbjoNCg0KDQoNCkhFQUQgY29tbWl0OiAgICA5MGNmODdk
MSBlbmV0YzogTGV0IHRoZSBoYXJkd2FyZSBhdXRvLWFkdmFuY2UgdGhlIHRhcHJpbyBiLi4NCg0K
Z2l0IHRyZWU6ICAgICAgIG5ldA0KDQpjb25zb2xlIG91dHB1dDogaHR0cHM6Ly9zeXprYWxsZXIu
YXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTM1NDc5YjM1MDAwMDANCg0Ka2VybmVsIGNvbmZpZzog
IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvLmNvbmZpZz94PTU3MjBjMDYxMThlNmM0
Y2MNCg0KZGFzaGJvYXJkIGxpbms6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9l
eHRpZD1jYjk4N2E5Yzc5NmFiYzU3MGI0Nw0KDQpjb21waWxlcjogICAgICAgZ2NjIChHQ0MpIDEw
LjEuMC1zeXogMjAyMDA1MDcNCg0KDQoNClVuZm9ydHVuYXRlbHksIEkgZG9uJ3QgaGF2ZSBhbnkg
cmVwcm9kdWNlciBmb3IgdGhpcyBpc3N1ZSB5ZXQuDQoNCg0KDQpJTVBPUlRBTlQ6IGlmIHlvdSBm
aXggdGhlIGlzc3VlLCBwbGVhc2UgYWRkIHRoZSBmb2xsb3dpbmcgdGFnIHRvIHRoZSBjb21taXQ6
DQoNClJlcG9ydGVkLWJ5OiBzeXpib3QrY2I5ODdhOWM3OTZhYmM1NzBiNDdAc3l6a2FsbGVyLmFw
cHNwb3RtYWlsLmNvbTxtYWlsdG86c3l6Ym90K2NiOTg3YTljNzk2YWJjNTcwYjQ3QHN5emthbGxl
ci5hcHBzcG90bWFpbC5jb20+DQoNCg0KDQp0aXBjOiAzMi1iaXQgbm9kZSBhZGRyZXNzIGhhc2gg
c2V0IHRvIGFhMTQxNGFjDQoNCkJVRzogcndsb2NrIGJhZCBtYWdpYyBvbiBDUFUjMCwga3dvcmtl
ci8wOjE4LzE4MTU4LCAwMDAwMDAwMDg1OWYyYThkDQoNCkNQVTogMCBQSUQ6IDE4MTU4IENvbW06
IGt3b3JrZXIvMDoxOCBOb3QgdGFpbnRlZCA1LjEwLjAtcmM0LXN5emthbGxlciAjMA0KDQpIYXJk
d2FyZSBuYW1lOiBHb29nbGUgR29vZ2xlIENvbXB1dGUgRW5naW5lL0dvb2dsZSBDb21wdXRlIEVu
Z2luZSwgQklPUyBHb29nbGUgMDEvMDEvMjAxMQ0KDQpXb3JrcXVldWU6IGV2ZW50cyB0aXBjX25l
dF9maW5hbGl6ZV93b3JrDQoNCkNhbGwgVHJhY2U6DQoNCiBfX2R1bXBfc3RhY2sgbGliL2R1bXBf
c3RhY2suYzo3NyBbaW5saW5lXQ0KDQogZHVtcF9zdGFjaysweDEwNy8weDE2MyBsaWIvZHVtcF9z
dGFjay5jOjExOA0KDQogcndsb2NrX2J1ZyBrZXJuZWwvbG9ja2luZy9zcGlubG9ja19kZWJ1Zy5j
OjE0NCBbaW5saW5lXQ0KDQogZGVidWdfd3JpdGVfbG9ja19iZWZvcmUga2VybmVsL2xvY2tpbmcv
c3BpbmxvY2tfZGVidWcuYzoxODIgW2lubGluZV0NCg0KIGRvX3Jhd193cml0ZV9sb2NrKzB4MWVm
LzB4MjgwIGtlcm5lbC9sb2NraW5nL3NwaW5sb2NrX2RlYnVnLmM6MjA2DQoNCiB0aXBjX21vbl9y
ZWluaXRfc2VsZisweDFmNy8weDYzMCBuZXQvdGlwYy9tb25pdG9yLmM6Njg1DQoNCltIb2FuZ10g
VGhpcyBpcyBuZXcgdG9vIG1lLiBJIHdpbGwgdGFrZSBhIGxvb2suDQoNCg0KVGhlcmUgd2FzIGFs
c28gImdlbmVyYWwgcHJvdGVjdGlvbiBmYXVsdCBpbiB0aXBjX21vbl9yZWluaXRfc2VsZiI6DQpo
dHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/aWQ9ZGMxNDFiOWEwNWNiNDhkM2Q5YjQ2
ODM3YmMyZmRjOWU3ZDk1ZGJlOQ0Kd2hpY2ggYWxzbyBoYXBwZW5lZCBvbmNlLiBTbWVsbHMgbGlr
ZSBhbiBpbnRyaWNhdGUgcmFjZSBjb25kaXRpb24uDQoNCltIb2FuZ10gSSBndWVzcyB0aGUgcmFj
ZSBjb25kaXRpb24gYWxyZWFkeSBmaXhlZCBpbiB2NS4xMC4NCg0KDQogdGlwY19uZXRfZmluYWxp
emUgbmV0L3RpcGMvbmV0LmM6MTM0IFtpbmxpbmVdDQoNCiB0aXBjX25ldF9maW5hbGl6ZSsweDFk
Zi8weDMxMCBuZXQvdGlwYy9uZXQuYzoxMjUNCg0KIHByb2Nlc3Nfb25lX3dvcmsrMHg5MzMvMHgx
NWEwIGtlcm5lbC93b3JrcXVldWUuYzoyMjcyDQoNCiB3b3JrZXJfdGhyZWFkKzB4NjRjLzB4MTEy
MCBrZXJuZWwvd29ya3F1ZXVlLmM6MjQxOA0KDQoga3RocmVhZCsweDNhZi8weDRhMCBrZXJuZWwv
a3RocmVhZC5jOjI5Mg0KDQogcmV0X2Zyb21fZm9yaysweDFmLzB4MzAgYXJjaC94ODYvZW50cnkv
ZW50cnlfNjQuUzoyOTYNCg0KDQoNCg0KDQotLS0NCg0KVGhpcyByZXBvcnQgaXMgZ2VuZXJhdGVk
IGJ5IGEgYm90LiBJdCBtYXkgY29udGFpbiBlcnJvcnMuDQoNClNlZSBodHRwczovL2dvby5nbC90
cHNtRUogZm9yIG1vcmUgaW5mb3JtYXRpb24gYWJvdXQgc3l6Ym90Lg0KDQpzeXpib3QgZW5naW5l
ZXJzIGNhbiBiZSByZWFjaGVkIGF0IHN5emthbGxlckBnb29nbGVncm91cHMuY29tPG1haWx0bzpz
eXprYWxsZXJAZ29vZ2xlZ3JvdXBzLmNvbT4uDQoNCg0KDQpzeXpib3Qgd2lsbCBrZWVwIHRyYWNr
IG9mIHRoaXMgaXNzdWUuIFNlZToNCg0KaHR0cHM6Ly9nb28uZ2wvdHBzbUVKI3N0YXR1cyBmb3Ig
aG93IHRvIGNvbW11bmljYXRlIHdpdGggc3l6Ym90Lg0KDQoNCg0KLS0NCg0KWW91IHJlY2VpdmVk
IHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdy
b3VwcyAic3l6a2FsbGVyLWJ1Z3MiIGdyb3VwLg0KDQpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMg
Z3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRv
IHN5emthbGxlci1idWdzK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208bWFpbHRvOnN5emth
bGxlci1idWdzK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20+Lg0KDQpUbyB2aWV3IHRoaXMg
ZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9t
c2dpZC9zeXprYWxsZXItYnVncy8wMDAwMDAwMDAwMDA0ZTViZGIwNWI1NTE2MDA5JTQwZ29vZ2xl
LmNvbS4NCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90
aXBjLWRpc2N1c3Npb24K
