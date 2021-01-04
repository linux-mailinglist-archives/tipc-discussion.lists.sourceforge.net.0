Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D4C2EA039
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Jan 2021 23:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n5bGu7nBmDJ4OueHFRUHwMWvj6WOUoWT7HeWEw3y7aw=; b=UFwlbPkpL74uNSi1FCJmUpb/7w
	zkh3p+h6li6rlpFqvB9c8yI6qKpktRlEkDLAJ+i5j1TwPfS6sl1ZmASgn9Va14PR/P6fbNo6YnBG1
	3C88HjbLa2kMqof/CeK/E5f/BHDQk8OlvZ00Fi7DqV9WNzNPlYqY306Og4HbbrjBdnvM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kwYlZ-0007Yc-UV; Mon, 04 Jan 2021 22:55:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1kwYlY-0007YO-PB
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jan 2021 22:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x/sABv916kvutwX2wNZvurtmuZ87/dgJmY24N60weVE=; b=SbwyLkzCYhX4WQGpjVwSA3iynW
 CZ++pd74JF9Nevmc2TZc6S1ffxgOcQcxDWZesCV0YsKt7wu4iZAQUiX0b7RjSpe2GOu/o0ir+XKKN
 KPKgDc2o8w+4sjt5EzkzpWEZVz2srBxSHxhsOHUayyxyJv4eELI0UuiJq82E7x4pfUT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=x/sABv916kvutwX2wNZvurtmuZ87/dgJmY24N60weVE=; b=l
 toryYsoVy41Tkp+X8qvXYz8lu3C4GKA1REEZBW+cLBB7jfD5dDiTos86vhHZVNKYEm73+KDed1A+N
 iksRkgppdOTCNFCJQkyL2WbNF4i/1wfQsk6EIYrZ7GdtDevRnJ6QQtX4dsVrjJNNZJRB9IdZR722j
 3BA7XgScnR8yvsYk=;
Received: from mail-db8eur05on2091.outbound.protection.outlook.com
 ([40.107.20.91] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kwYlM-007uHi-Lf
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jan 2021 22:55:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=chqUE4yhSueL0DS0CB2eFWSkAbppZpIzoUIsqVuYH4Oe35BL49KwGqAuoW7VERK3qAelSxJNZUv5preBfFcp05dCCX/gvDhaU51Z2H7Wnfl8jUmXkPkf6s/C/mk2Xzg/3aqbywudvu4KlkU7ELAYseo82Ga1FrU0Ucm2ppg4yTusq0cDPbu1MnPS2u+ARDzCO1IWXZFQinkCMMCQqAd+vHuT4z4J5ceQHHgJtWsTY3jcSMwzWmZDdc63CaJRBK+0iXAiHuaCpIoEsFtqp1E6+X+cJ/6AUzUAX4WJwhYtddBemYxfBZhzkCmlM0Dyi8jn6vopu9+KlHxrbEkU4rtmhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/sABv916kvutwX2wNZvurtmuZ87/dgJmY24N60weVE=;
 b=CcHkg4b4du39ehwqBb169kLGWmfD6wbn6Ujjp0sP/gEb3fkYGAbeci53SIKtrjvKrkOUyjkm6ovKoPYNjGaqKSL9/echHllldKjeYIRT5EYSXkZbGXMaLcSBZFZGweH1faBPYZx5TxdSGLS6eo6FXXjiR/xR+OUKQysn70beoyqrmag552dmAUW499oxfJ5YBjVjqa/CQm4MAPUQF88pAcxK33DTWZZkAnrH1R3pdQP25PGWZ79Dq2DGixtxwju4SfHpyKKvp0HSDcJJuh0QadML981DMnW25XIkZB2A6/I0HbbNl4oH9LO69W/5cU4cOm7SXWt0Y26Qh3ChJjAjAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/sABv916kvutwX2wNZvurtmuZ87/dgJmY24N60weVE=;
 b=Bc6WnlO7XNEwGett/Y8187kTc80eNrYMmZyK0PKiZEiVLEBrnVV+71w5mFdHOu6Vccr7EKOLxB9oUEB4myt0ZsdxAs/V7uEOfRk81412Xjlo9EYQH5iSHZklFK7QJvGEjJPoLBO9HuZ5eKJT1qhtBzpRCe6OUhAoLFamGPwRALY=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VI1PR0801MB1776.eurprd08.prod.outlook.com (2603:10a6:800:5b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.23; Mon, 4 Jan
 2021 21:22:55 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::b85a:8a9a:c264:4d0a]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::b85a:8a9a:c264:4d0a%3]) with mapi id 15.20.3721.024; Mon, 4 Jan 2021
 21:22:55 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Discovery between VMs
Thread-Index: AQHW4tSGtYq8SIz7qkm0pWR6OZ56Ig==
Date: Mon, 4 Jan 2021 21:22:55 +0000
Message-ID: <VI1PR08MB419220FCFEAC17883490106985D20@VI1PR08MB4192.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b9180f4-c07b-4431-3496-08d8b0f6e70e
x-ms-traffictypediagnostic: VI1PR0801MB1776:
x-microsoft-antispam-prvs: <VI1PR0801MB17764A585D1EB78386EDC09485D20@VI1PR0801MB1776.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ccy9fJqKpR7mhoM0IfgZN9jKrTLNeRWS0JXUAZfQDTzAatch24ytwgC/DJfyw0Yl3nQ6dhqr6Jy1MkKlCJ1avyfXmlA1RPjQJEXB5JMByOdKm3JN8sQMwB8nTPf2FQQt6OIX35QjXm4XBVBQXZtmudQAaa3ABdqkYl7Do85y/DfceXcUV4G4tASsx+42qArkHOURMT4crkOl9LGwJPPDsQDfJ0Ys5HpPrUCCLm9WzijBiLl9ptHxlM64fgD29QzmZ9nqFH+vcj/DytFDYy0X/YShylBnyn0vfQIwiSL+Hdqi+z1Va7RxgkOc4yFYZLRcPBQaUbhvGD1/IqZPXYfM6wqiH0uCQxWTfLzpZtOlqC6js5HVPAm5MT9y0RyCvD1Q3jzpJ1fMByXU/PifteVPrg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(376002)(136003)(39860400002)(396003)(2906002)(33656002)(7116003)(478600001)(8676002)(186003)(26005)(86362001)(8936002)(6916009)(71200400001)(66446008)(64756008)(52536014)(91956017)(76116006)(316002)(9686003)(66476007)(19627405001)(7696005)(83380400001)(66946007)(3480700007)(5660300002)(55016002)(66556008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?9GMTRuMm6BXEHgRvhXQMqSA+Pd2Pauide5sWQ4XYJYo8vhU/W2hOTukqGq?=
 =?iso-8859-1?Q?MXDToezeEMTXax4+aU7hWer0XGseeLpRHqQBpEeHF/P9I0Vq7ctz0qsuFs?=
 =?iso-8859-1?Q?oHuGMwx/c6Uz9Pr75wbSYOdcXyEeEk4wSHXbE4vF+Cjfnj33KDwtwjj2D7?=
 =?iso-8859-1?Q?PLd/Rj89LgMuA/Kaw+mWsW9bERiMx/otm8+zQsQGblxOBpNAGq/TQAvaRQ?=
 =?iso-8859-1?Q?+uQ7yPj5TcU34HVpPoKkeinshkFUsb9bMTI0X8GUs0Ahlc8DVkEOxqpX9N?=
 =?iso-8859-1?Q?14tDogHGCi+cGP8YsdFBE/VPgeIH9pYMvwyN48TGktiWxY5UrGVv9L3r78?=
 =?iso-8859-1?Q?L4D3Cqvs9zFoS5V9LTgphvfirOvbOf7RqOEn19eE4QVTEG0XLVxpt53pJ3?=
 =?iso-8859-1?Q?Q5jHO45jv8bee+cOsJTqmBxWMIVI3mNMeoHfREMyoZKDNu6/s0XNUefew7?=
 =?iso-8859-1?Q?/n1GshEsNCUhp+GwfMUEB6sEUsa20efPFotDQBn4shCQUVg7M2x9KoddSw?=
 =?iso-8859-1?Q?PxnzeTAdOyIod3V4c5bWd3WmlhhhQhcJombmxxoPgT1DRbvNJLZOcbse/J?=
 =?iso-8859-1?Q?CsP1nLwXO5SYuxX8hxt8/3ozgaGcDTLgBse/Pjkb65ILpDYbiYZ3FYZEZ4?=
 =?iso-8859-1?Q?aDtrt0Epkx7UCbXm4/qdlnXjJyhw6cP6UGuIg/hd8WN5MoZwjB62oqFRnp?=
 =?iso-8859-1?Q?abaqelUJry4788QI4JuN36O58+UZ7VaKMalWLzonU/NNcxBRjT9fTQul3W?=
 =?iso-8859-1?Q?IJUO/G6zpR6in9wbSsDEb+2Tgso0yU8Iy23f7dMhfXd1Mox2nKfEMOzUCa?=
 =?iso-8859-1?Q?fRZ61KagaxEuiR4V4QJ8BingZRuZ8eVWRb6osNgGIX2cpwDJ/5+YRvj+3u?=
 =?iso-8859-1?Q?ogRf9+FOQGkYSm2kdqJQ8APTED27Dd4T8GB/7fkAjR6Zp5fiJgzL/MfJA+?=
 =?iso-8859-1?Q?H3IUOH++hhGjT5laUXcIq5nc3N9BR8ESC1ydfr6IU2PVdQAM/GO6N/maO0?=
 =?iso-8859-1?Q?WKRizt+e1GaVgNbjk=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b9180f4-c07b-4431-3496-08d8b0f6e70e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2021 21:22:55.7436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sEfK/Ie1ie9cciibZmX3TQ8eEyYp1UVoM6JQHcsWHGfWS6qM9xV7O9sdzX3ag7uyi5vq5kRHDaTN6qa0BrlbVEBoMEYzvRkP3Wb7Mv/Wt48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1776
X-Spam-Score: -6.8 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kwYlM-007uHi-Lf
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Discovery between VMs
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
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   I'm new here, and I have trouble getting to SourceForge through the corporate proxy, so forgive me if this is an FAQ. I'm trying to get TIPC working at a remote site between two VMs running Ubuntu 18.04 which at least appear to be on the same IP subnet. The node address is set to distinct values on both hosts (as 18.04 had other TIPC which required the manual config), and the broadcast bearer is there, but they don't appear to be discovering each other as the client gets a Host Unreachable trying to do a sendto(). I believe the VMs are running under VMware, but getting visibility on that could be tricky. The TIPC code works fine between physical hosts locally.

   Are there known problems getting the ethernet broadcast between VMs working? I believe I have the proper incantation to use a UDP bearer for use as a fallback, but I'd rather not use it if I don't have to.

   Thanks.

                                                                 Gary Duzan

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
