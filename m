Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACE141579B
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Sep 2021 06:37:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mTGUD-0003fv-55; Thu, 23 Sep 2021 04:37:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mTGUB-0003fk-VC
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 04:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mGheaad/2iIUYRfPVwxhc0hub+aEsdPuF6hLxJgIIoY=; b=Asw1RUPBG8lAuEbhoyC9hJVA8E
 lpmaF0l+C9zXJtSgbbstwzNnGa2wA+bR7ssjXWjCU0mZtaNcdZ9m4qnWL3Vmy8/30K4WGk7oqH+mR
 hi/foTNqC33N8YSeHNmM+uQkrq8H7vvYBliZ7oKlJlQpOXYZcG/ClNLRLFO8ADVe5rdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mGheaad/2iIUYRfPVwxhc0hub+aEsdPuF6hLxJgIIoY=; b=VPoZdYvedxj7GC1kZzKiM98WUq
 wA1p4zMpD//mfBLmXPfgh3X1oPIXuGkU6W7mlpg9PZPCFeh0ZThFWHF7KwUMyBpjySB/9D43MQZgj
 UnXjcuHnzBPi5tETpN0e0qxT35JTk2IvtfBCBDl/sRr/zJnIlG/UVlCNUZIyK4B1Yt1I=;
Received: from mail-eopbgr60128.outbound.protection.outlook.com
 ([40.107.6.128] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTGU5-002IAm-MB
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 04:37:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TIxDjprZbL+poCTUhZJb4AbmvcaOGbe36squMOPIf6JNeSiJyB3xZ379Cl0dOJA4uQV34eW3Rawnyoo/FXCW0deEBet3Lkj5s/BN+fF4CyhuLf/MpGHzBC73k+TheJtcwcazRGTQSOBGhCg0iMPGWLaYDBH/eJHHky6crfQPnIqcWMty2VExlh1WPRLG1Si1UfRzzoVG+IhUguFtNQJyuy3K0GBNBtxayYrKyjz5u3P1qSgC70PDdOrnLmrRJOwnIuKc5DoJcfmvoCWyUILJ+KPFbOUHfNRZDNOLaFEATufXvZ22ePLsb5aqGO0ILWVikY0u6cDvhUh/vrTHSCL1fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=mGheaad/2iIUYRfPVwxhc0hub+aEsdPuF6hLxJgIIoY=;
 b=D6aTVraOW66L2MGcADY38KDqemf7SobWI3OROYeR0c1jpBG6AwNM9y1uE5J+J2WEnX9jN6StMALWUatRzjFLQ5DvClaAii55fea4sxL3QSgdy6Yk8G2xBPb1xtv7sjYnQb3VRAS9CgE9UKeJeKL6NHKXPEseSlPZKBaMaJoChxNhPEQHmWUDKaRVh5atad0ow9Zk6Hvxo6sOHIJOE1RPX2GCL7bxb00NlhB3MvLNxOJtOG1EdWm2H3zPf2a7dpiZ3l4Iys400tOkEfG45+k/NUmARym0fn/1wi/J2doxxVOhhvcyi2xzulQFAMelm+qY85TzjeCX6RGrxqxyqvs85w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mGheaad/2iIUYRfPVwxhc0hub+aEsdPuF6hLxJgIIoY=;
 b=OBi+pIw15y5MhOFzNiaV3tNZVHEMgQbE1oEsb9VFeynV5cCakJwwsnJTjSplrqAYJ5jbH19hnG5/p17pnLb50pMFiEOxPO0MCNfLfXuE1NRqmsx+xLIk81TgE7/EIot4m4N6n+jHlY9TTUMlbJskxtacv37hVw50QkhfjkX/j3g=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB5901.eurprd05.prod.outlook.com (2603:10a6:803:e3::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Thu, 23 Sep
 2021 04:37:12 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7%7]) with mapi id 15.20.4500.018; Thu, 23 Sep 2021
 04:37:12 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Andy Stec <Andy.Stec@infinite.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Setting Node Address
Thread-Index: AdewF44YbizGK/lrRjCDsal/B9DFIQAB9KqAAAJNiagAAr1i4A==
Date: Thu, 23 Sep 2021 04:37:12 +0000
Message-ID: <VE1PR05MB7327AEE93DDBE9AC69498E16F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
 <VE1PR05MB7327A129847B8C3E743FB009F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <PN0PR01MB5521BE74A7FAAAB5F346FD1296A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN0PR01MB5521BE74A7FAAAB5F346FD1296A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: infinite.com; dkim=none (message not signed)
 header.d=none;infinite.com; dmarc=none action=none
 header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e7faafb-7ba3-456f-c7f0-08d97e4bcfd6
x-ms-traffictypediagnostic: VI1PR05MB5901:
x-microsoft-antispam-prvs: <VI1PR05MB5901A12E544A3BA9E3F4CA24F1A39@VI1PR05MB5901.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SxdD6ysQX/l6dc3IWOMhj6mm0+vQiSKsvQiK3OtqlcySZp32BLp8s8UnmN/e/BF3len3K1ibz1WfwBXOF17u6VL8Alt+zktQkpefM9h4w9Sn4Xn0SngbsMoBGGwQAdQDnJ858SSQfuegqQJdwUnYBMpxHZDgPRH+XBNdP59EVHvbB7lAqakqMn5SlsbbbLAipUsegbE4EMLQ4RWX09MkVEB1W8rVqI7033dVF5K3RXeloKTeeo8ZT5l7Fs0rfsse6G/FEMGnZ4cBsuUkpP8no3gp5GLjXFepPFNxBviHqJJSTXkWvkdSmB9QfXPaT1cXVmTGHOisvZvXBnu8lI5Vz6LtbCve37/mPXduqpikTXdazEjSnI/Jze7FKfjjcwFQ6a5oz8R7H8DDU095yguF0bdfXk2yTqkg+spDx4paqC5k6S23EIbxxE4agwNHihDMjtSq9izB16Kf5dv3RX3QV5XwA6FBnYpEGAftBayfdZKeZjQ+3Nw/7b8ILH1FozxefEgzMCXFvNfLsHrxipF73nAMs5IqCD1ti0KpvtjnmCd6WBe8jHGbTiTIRMEvQseXhZARFG116rrEGIQRvKBOTfLfOYiI7zea3T314DBM577nyLuODBMIFPRxa4/o3odGwo86RWsZOViQqG2vvTuxHY//lei92KmvPMVGKs3fixcG5ME34ZLqBP76RMcpTavTBTfog5yLNl4nAk8XRHMwc8XZQ4Qpr912Ica7aUCh04AqWhV0U0DFM2pC9x6wuerevz7U/eE5fDXrzcI6QA90hPxHZyxO5eANUFdrWwVgC+c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(8676002)(52536014)(66946007)(966005)(3480700007)(7696005)(122000001)(2906002)(71200400001)(8936002)(9686003)(53546011)(6506007)(38070700005)(83380400001)(76116006)(186003)(33656002)(38100700002)(66476007)(66556008)(55016002)(55236004)(110136005)(316002)(7116003)(64756008)(66446008)(5660300002)(508600001)(86362001)(166002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HPTbI+jS2GJSm9bLRdT8bAcEwfwRn/1h5SZhm2G7A+TNZj/tuTfxhHHkz3F0?=
 =?us-ascii?Q?0GzzWepGJdcdqvPzHOPjPqfWql+xG0PvjL6EboAPVRGII54YNIZ7rdvebkwG?=
 =?us-ascii?Q?VPM2wu3vxzY39DU09jY08yzkLsEB4Y/oNZHp1MRg6Puxa5Rg1QWazO/ez2bX?=
 =?us-ascii?Q?3HAEO+hbGxdbZ80bo9/WYVaQnP1xb9dauZTLK50lZsn8hKBeFpAKyU7iLm9+?=
 =?us-ascii?Q?h3ceT45S7OKKjV3R8TxpDJ4LFW6PCut7ddM9x5kO/qox3AYWtruPC84oZZX4?=
 =?us-ascii?Q?RPl2KZW8IqtOcdLQclkB/hUR/K7iya8fR2IwUcSpXNskvJYqrTGQ+/WILb5C?=
 =?us-ascii?Q?S/Px0vW8959yEM6aXKR4Ldu8qny1rNo+knRDkTM2XvVHKqOayYjJfog3HpV7?=
 =?us-ascii?Q?dHGdwx4xZilE5dmtPO6b+fHSwDX+PXAqXQHzC8+gYKfNa0cS8gfGcvnTqIec?=
 =?us-ascii?Q?ewwa9xFsyEd3Rap7QRFhbQ2SxiMfgX0gOgUT7YWAR6O+Wqex00vzKhik0qOd?=
 =?us-ascii?Q?ifzmgwz8sHmYB7UWjVCfioYryiq7JVo1QlRMHbhJI32ajCO/5STWn6bht5RW?=
 =?us-ascii?Q?DRRa9wQy/DALm8kuzR2a9PEghxhM1SRr9GRky0Fy75W48cEVZmUnpC6X0lD+?=
 =?us-ascii?Q?v7RMsb1RdeM3mcFccbwaIncV32tc5BT3eS9D3Pzzp/Zq4w4mglxUVrp2/B5T?=
 =?us-ascii?Q?a1zzfzix3/EvJEGYVdqFQDn4r+M/vqKtfEz0muyLO71s91Tw2rX0UplQ1dl4?=
 =?us-ascii?Q?X8PCRBeFEZMN3wzYSh4pfFba/y+P5YAh78Qqicc1RQ5z3NYdM8Akellxo/0G?=
 =?us-ascii?Q?aSjLHzqSxIsL2QUHKw642BKY4V95PjUMbl0rSZRZN8TEtQEqwWdo7l+FRRbv?=
 =?us-ascii?Q?UH1CO3S0awz7jPd1BogPg1Aa31R0mOLvTjgastSRPE2l3agFoM9cuE5ofAnW?=
 =?us-ascii?Q?zMWEJAH83kvnL99Jbzrrb1jkqj9UrXDPH1UaqspI7flhdA0rHa8k1kQhrkUT?=
 =?us-ascii?Q?cGj17g6fwzAzbypbpmcvIdD+1KAyJkPHAr2dVaiAu4Qh4X7dkH09YjGYncyb?=
 =?us-ascii?Q?EpT7QFTuOmhujN17XkLnC3CA3kHYgrdZRwY7jjB8hWlIkUnJL2LQZJ9p0rJr?=
 =?us-ascii?Q?kCXfCSjvNW3jxASHDzTx+3EayibO5c7u0e7fKCaivT52pavXwh+uRTB0n87V?=
 =?us-ascii?Q?BeQX7FRiW9zEV0LTb+CJLgNw93buuXTTwPdPuCoYiTtg0ZaP95KqOx35tu7z?=
 =?us-ascii?Q?7XOgv2jQL3E+m/c59jZsvfOibBizXhxzNwYBvVFZWOQYaCRg1fJrOBaylwLs?=
 =?us-ascii?Q?1fssX+xcOuR1QMKWghSFtyYE?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e7faafb-7ba3-456f-c7f0-08d97e4bcfd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 04:37:12.3286 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5nBxTQg+vCB02Rgm4Z1NZ52T8G/MCK2vt0+h5yLbeAgnLzzCiBmwXWEbHRzpAxMJGLyNzWd3NCa2WdBvYEdkcLDeBU3nQooEt9hn1ox1c3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5901
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Andy Stec <Andy.Stec@infinite.com> Sent: Thursday,
 September
 23, 2021 10:14 AM To: Hoang Huu Le <hoang.h.le@dektech.com.au>;
 tipc-discussion@lists.sourceforge.net
 Subject: Re: Setting Node Addre [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.128 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mTGU5-002IAm-MB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Setting Node Address
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


From: Andy Stec <Andy.Stec@infinite.com>
Sent: Thursday, September 23, 2021 10:14 AM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net
Subject: Re: Setting Node Address

Which command is still supported, is it 'tipc node set address'?  I'm getting operation not permitted error when I use 'tipc node set address'.
[Hoang] I don't know exactly in redhat 8, but in the upstream kernel (i.e v5.14.x) I'm able to use that one to set a node address.

Does 'tipc node set identity' set the node address?
[Hoang] Yuh, I think so. Please give a try on your node.

Sorry about all these questions.  Needless to say I'm not a tipc expert.
________________________________
From: Hoang Huu Le <hoang.h.le@dektech.com.au<mailto:hoang.h.le@dektech.com.au>>
Sent: Wednesday, September 22, 2021 9:05 PM
To: tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
Subject: Re: [tipc-discussion] Setting Node Address

Let's use 'tipc node set identity' instead.
However, that command is still support as legacy, this means you can continue using it in your application.

> -----Original Message-----
> From: Andy Stec via tipc-discussion <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
> Sent: Thursday, September 23, 2021 8:16 AM
> To: tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> Subject: [tipc-discussion] Setting Node Address
>
> We are porting an application from redhat 7 to redhat 8, that is from kernel 3.10 to kernel 4.18.  It appears that "tipc node set address"
> command has been removed in kernel 4.17.  Is there another way of setting node address?  We are trying to limit the changes in the
> application.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
