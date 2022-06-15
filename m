Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 323A954C3CA
	for <lists+tipc-discussion@lfdr.de>; Wed, 15 Jun 2022 10:44:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1Ocy-0003M9-7a; Wed, 15 Jun 2022 08:43:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o1Ocw-0003M3-Jv
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Jun 2022 08:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uNw9nfinNX+5A1yhdT1+1esYH6h/RtSDv86E1Gy1hoc=; b=QkEjdBjS3RzQjaVzmIrrWy5L40
 iAyf8HYFT1Tc42uBcjczp9IMJk1fxEBlBrBfF0SGmce+EcDFqfAym5B0vMvbclY/+OID7xukB99lO
 Ne7v16TPOLB19bSRezA3rOe9NDv5l/GDAvgqs/gp2mBjLwEaTFQttC1JFBMH13EY9ycQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uNw9nfinNX+5A1yhdT1+1esYH6h/RtSDv86E1Gy1hoc=; b=MYtd1H2o36q1rR5wBAtNp6QGvn
 9ZhuhM39EKgOea08lXlswVPYM46VMXGezbxm2gPDOMv5fHUEZpgxO8icmf/Qu2hUUXYK4CALfAJ/q
 9A5vZLr9JLK2J1aiKifofxXhcwJzw9R09PTjMhTktaZ6+7AZXrhc6rOyOyBiEi4QUNco=;
Received: from mail-eopbgr80120.outbound.protection.outlook.com
 ([40.107.8.120] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1Ocq-0007mn-8e
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Jun 2022 08:43:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmkW/TEbMX3c1bTH6m+LpJ69/P4ZMcuz334UKT7w1jsNEd6UXtxR8e3oEoloFekznSSk7u264Hm5In18Bs6RAT2tF+MAs/RN2c4bhb3WROD7ofTscfXEounNd86RZRYEtZHoStjqXWBexqjqdghLDwf9DPSkO3Erx4MUmnjgamhUBNNVEErTM/pME5En4270UqVvYoBQUt2WTmQ8wLxttNE9iSH5mtL0CFyfswsaIyBLc0lIJQwX3ziUZ1MuA4rEh28Qt+XGOdTtwQWFo8SI7mLc1v0nqZ53kf1dZaDmgMdb6ejGmioQTqKGqd9EEISyC7krQOKXT/dZ50b0UgSSPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uNw9nfinNX+5A1yhdT1+1esYH6h/RtSDv86E1Gy1hoc=;
 b=kBVlP70vc9UDFgpgpAhFV9PSfkT0k1t9QGrJgo6EO1dzfNWyZom8mW0fEyX3w4TolEeYTUDqL68wbgW7i/Y3BlzZGPND7IQ+quIZX85PpZgP8VRsCnJiW671mWZs83e+9N/uu6r7jrRZyIeUpCAcIuYKyfQkj4MvgcFVjmrOWnFLZDsHBdMxnFisfrnTvSy+wGMl/rbcQkcBrYuApDj4QLN+S2pYJ1GotVi5HpKKVJcC3SK7Sb9xj1epUCYrR/ojaGnqY3S+i4EaNDI1Biwmni/cGNPjg2jXliZukXKglcGY2I9KdPy3oLMa6Mk1HRPMRcBlHM25uIaNEJAH5exj4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNw9nfinNX+5A1yhdT1+1esYH6h/RtSDv86E1Gy1hoc=;
 b=vx//plc1k+GDpQisge4rtZ2RZEvK8XfXVPhf6tqlpEM0ANIJpdhVkNYo2+SA+yidFhi+ynN+U6prX3hEYVMqOVMWIYIWXD6Dnj/8tv9MgcHAd6JC/tjzsW7VGhASapmGjBBrWCFarQSIV/CGRXjkMnM3fLWH9PX0LUuIthio4xw=
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by VI1PR05MB4464.eurprd05.prod.outlook.com (2603:10a6:803:44::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.14; Wed, 15 Jun
 2022 08:10:19 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%5]) with mapi id 15.20.5332.020; Wed, 15 Jun 2022
 08:10:19 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: =?iso-8859-1?Q?R=F8ysland=2C_Jonas_Gjendem?=
 <JonasGjendem.Roysland@carrier.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] TIPC Communication
Thread-Index: AQHYf+/DO1ns1z3HxkKfaVIQpdfzQK1QHh+A
Date: Wed, 15 Jun 2022 08:10:19 +0000
Message-ID: <DB9PR05MB764130C46AAC9F3AEF7DCEA5F1AD9@DB9PR05MB7641.eurprd05.prod.outlook.com>
References: <SJ0PR06MB85628DA3C47DA6D9DC6093EDE4AA9@SJ0PR06MB8562.namprd06.prod.outlook.com>
In-Reply-To: <SJ0PR06MB85628DA3C47DA6D9DC6093EDE4AA9@SJ0PR06MB8562.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96215854-9a92-48fa-90b7-08da4ea67ce0
x-ms-traffictypediagnostic: VI1PR05MB4464:EE_
x-microsoft-antispam-prvs: <VI1PR05MB446486A3631AE40A4B372451F1AD9@VI1PR05MB4464.eurprd05.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WsgT6kJVMRsphGqtt7U7l0xgO2ojbByn3mFihpvigyxzjXfFYktrxOLWEZLSEXqGmTCh6vgc8O+uvZ/b/x71f6GCwyoBryUf8Fm+Qw5JNgwKJ/zSJkMFQ7nStWXlKHmBeWMRw/4l2A3C4RoEDA8lp0oNZrloUePVyqGjvE+cXct9FFLPLT6oGxJ7c/IyOHD3AuLequnbWjaUjZ8HQMWutYhkpdopfLXUkWYVHZBNt1EBkaYceG9mB3VEfjg1guKXcqWNX4UBIy3i4XSyg3UdAnkwRQIERsdpGdiGnsQJ1TIO5pbGw0DWzBmbr2caNyL6VF5FZu4dGv9iU9JgvSie0mCZCRU9sOyF0pK090FW/Tjs0J273ZSOKP5A1HnAut5zht9PRS7F5nSV+Mot1SdeKVGNh/pWBP3lYeAbIG6znRpuA2j/O1Snmu4OFeA8ShCJYQhHs590ksWpLryWXBu2jR6hcVPYdEuYnMZRCwTSVr6/P501pK/1PkKAP+TYwTF/6wlGfbHOAy8p3QS6dS6ATmLLst0+DSjQOJliiZIwl5QIV7OB8ojOxLWaQi+i6hqfLQfsGpG9uKO3J07+DNIYPzR+fofYy5X6GROW1PGgiJwTulr/fqtxYq77FFWn4K25J+Ng+6OdXB9H7LMnBsmLzNEaL/4wbFBrQ0GHv+oqPPCHNj4yKQyPC6RIa4ueYYj0QIX0JgElvpx6YHqE63avTCwgye6usqnEsqfpCCBfK6HKcKmAawZLT+Mp/9b+F+WFKPy997kdTSoW2QXGzzektCefn6uGzNF+HsyGEy4Uuck=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(396003)(366004)(39840400004)(55016003)(4744005)(71200400001)(122000001)(5660300002)(8936002)(52536014)(33656002)(508600001)(186003)(966005)(83380400001)(41300700001)(2906002)(38070700005)(86362001)(26005)(53546011)(9686003)(66946007)(66556008)(66476007)(66446008)(64756008)(7696005)(6506007)(316002)(38100700002)(76116006)(110136005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?az9HnadTOhyP0+2t2sfqvVqZ3SuuSSG8DcoUd5cBVKUoFilZmj26bADuP8?=
 =?iso-8859-1?Q?DDwcmC/P+wKmg5HfnactYUZ6smKA1vZG30OoCTmM2b/3vtxt6wbBn79GOm?=
 =?iso-8859-1?Q?qprgUq2P2Sw5LcxSlPYOpALSrIJcSmMeoDO1+WS8tdSYcQcTvPVRfy6Iwz?=
 =?iso-8859-1?Q?NkAvw3ALtRB0FcsWprrUUS+qo2PG4XMct3JkqMwtBei3ZmDig0MCpi5uoi?=
 =?iso-8859-1?Q?7jHP9fnU38SOj/DMke4BcFMGTlK8xnDAaJePBS1WJgHANQJgFCCJxFJ88I?=
 =?iso-8859-1?Q?2S40OXlDd5X2Ul4odSYHA5PYqof4o6w4iV9FaisnXmNqKxQef1IdjtV6vR?=
 =?iso-8859-1?Q?k94TMTb33UP6+sK8TsKuQE9icb2JpyI+a3BuuYoMC+zoSEf5MzT8blAhBc?=
 =?iso-8859-1?Q?JgQbe+IBYALnwpbRjfKqAqPl+UPWPtOHt0Fqti6drSj74nqvv1mJv6BOw2?=
 =?iso-8859-1?Q?LR6eBYuM080Fpq5tI/ph3HKZiI4jNM1fA0d8D5tpNyM4BLCrMUxTDG57Wz?=
 =?iso-8859-1?Q?txH9xbGlTBhNcBcM0EJYJPIQvQhl8JAaY5zbx69aODJRnIE50WnuHUOk/S?=
 =?iso-8859-1?Q?IRidJtOQ9GTV7wBPA3IDwLwqnUgZkb43/cZN9lN+d+Yxar+74XYm9gvoKI?=
 =?iso-8859-1?Q?4YkOrziEZEq1nJfjrJtw6iqeGk2fO5nfYGDm6kkgG3KPbK02VcnVAc5HTs?=
 =?iso-8859-1?Q?dZ3h2HQgHeLTrw/IdRXQwemAIYXtDdBkTZ+uWNsjgO2bjfoQKoJLexr3MW?=
 =?iso-8859-1?Q?NsIO/9OL0n6n5tTA0bUW9NkSdrdl6GFtHhG1x+QWGCrt6q3tc/B6gYYyVI?=
 =?iso-8859-1?Q?omt+kPGH5XzxJoUY0fShlaEQSBKGiTQub1KdUY88AJTPnoDR8DwLIVAHMN?=
 =?iso-8859-1?Q?0G2JpADNXA8ai9xiwMztonAxpUHIH2r+mMPmoxiFrLrBT2ZKl8VRkZhiAk?=
 =?iso-8859-1?Q?/6b0wiki5lMhqe1v1OrmeiTFZbmHBvMRLJAqZFbg/64Ws7ibyBxRSh5uId?=
 =?iso-8859-1?Q?ePRc7iU46s0AHAi+k7RF9yCZ7xoUH72okPvy+3PHUOcJipi6l8U8fZKLWE?=
 =?iso-8859-1?Q?XJXNBHAIRJHyMAzGksHiTr5mKdCUMECW1/ewrHphRiokskaa3fTQUbp26W?=
 =?iso-8859-1?Q?GsKSyf/P/TsaStP2CobB1ABnWZISSV+fGM6A9ZxNaXsLcRK842pbg4l3Ug?=
 =?iso-8859-1?Q?hermubpfMZPDxfZqPJL644bnry1SG8MtJIKoMwoVEOzonuRSCd+oT9emaq?=
 =?iso-8859-1?Q?AVVA3bQTHG2+dHaiQhwgRxmrqnmAW2igF4lOEZeioqw55TABK9i1VhE0Y6?=
 =?iso-8859-1?Q?Aw7xapeHt5xzG6MfyhanKYXzKSRMOXPOyQcxT/a+O5zfArr3INCsIfANWI?=
 =?iso-8859-1?Q?J7OcYNOKMBmvuJe/7KQCTzsbC4NbQhtUbsNUNflIx+WJB66H0Vx3MMwHCQ?=
 =?iso-8859-1?Q?0LTjIMR8lcu8BA63s4YZZCOJBT2x9OrDC6+oPeikH4BmMfjOrvMVD/Sku/?=
 =?iso-8859-1?Q?8kq8fjLzghQ+oY/IFV9/VYMaUbffPyuilQgjXUP5GBPY6eIeDAP8NzuErd?=
 =?iso-8859-1?Q?cGAW/3zSlVpVXgyOjgp/Gbu9d0+Ief5/x1qjP++o+DsM6JQ7jZr7oUwdPr?=
 =?iso-8859-1?Q?wDoavKp1qyFlDb11iofpu4UlRauerKYieIiHmgl6EArahRMOtYOqIeFqWf?=
 =?iso-8859-1?Q?2fOcXFuQwuoJHe4cAW5qG0IkZbizs3975v+hcJPTMPkVq1GW2pxOwSRRCK?=
 =?iso-8859-1?Q?GIjbDI+M1BP7zUX29v+w1nu+65BIZc1lGk15E04O1UB5O7DfU0V9qxVJ2v?=
 =?iso-8859-1?Q?uIFeUUgE8Jjn8u8ovp9ANHBr6JiMNX0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96215854-9a92-48fa-90b7-08da4ea67ce0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2022 08:10:19.2507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zK7J8OewPQxXMGDahFidSi1/Mu1hSpPLLFNkBvdO33b9FX1+frolDWRRpmoyuXDftYPdFjV06B9Ohyd+UwcpIc6/U7tF5zEzS1VzsPsFFXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4464
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Please take an example at:
 https://sourceforge.net/p/tipc/tipcutils/ci/master/tree/demos/connection_demo/
 Regards, Hoang > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1Ocq-0007mn-8e
Subject: Re: [tipc-discussion] TIPC Communication
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi,

Please take an example at:
https://sourceforge.net/p/tipc/tipcutils/ci/master/tree/demos/connection_de=
mo/

Regards,
Hoang
> -----Original Message-----
> From: R=F8ysland, Jonas Gjendem via tipc-discussion <tipc-discussion@list=
s.sourceforge.net>
> Sent: Tuesday, June 14, 2022 8:22 PM
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] TIPC Communication
> =

> Hey,
> =

> We are some summer students that are working with the TIPC protocol for a=
 project. We like to make a sequence diagram of TIPC to
> better understand how the protocol communicate from the client to the ser=
ver. Like in TCP it is using 3-way handshake to
> communicate before sending data from one another. We really appreciete th=
e help we could get to better understand the protocol.
> =

> Sincerly,
> =

> Jonas Gjendem R=F8ysland
> =

> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
