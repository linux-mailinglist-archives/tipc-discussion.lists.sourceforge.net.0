Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA35453F49A
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Jun 2022 05:35:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyQ0N-00013B-O7; Tue, 07 Jun 2022 03:35:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1nyQ0I-00012C-D3
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 03:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iAnf1q1GmBruU5+meSAtcHuAxuAsjMe6/saPoy4Ve1c=; b=W/gljZXYIrR8/sHetX9P6b0Pm3
 PBwP0qcgw4frLzhiIr+GMLylIUE/8etLPCEis7SQWuED6sx8LHRKdJ7pVwlEUzK5KwXRYnEzAt+0S
 VS8hti6+aXwlyVjrLPJQxHu/wWaVj3HJaTnrBgDYHYSa+wU3do+fXWB3YSIJl9QMTDaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iAnf1q1GmBruU5+meSAtcHuAxuAsjMe6/saPoy4Ve1c=; b=jm5nmHyNlgIrqN+WM00Fl++Dq4
 uGkLWsMyxBhOA2tFqwekw8SAt31W6AhqTJbiGMOBVN9ZBUaOL5PmLTAAHzTBSbhf1SFepJJfI/90T
 U5rpmb6KTPD9PVYeeUuwx4dbE3k0TudffzbGTJSoWWsfLgLKgjp5hadUZvu2vzP+llT0=;
Received: from mail-eopbgr80095.outbound.protection.outlook.com ([40.107.8.95]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyQ0A-0005MX-SC
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 03:35:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cx3xxP0XDnP+kIpMNzSrV/LKi3FjOTC9KpBt8YAUGoWkZ46Jfbok/fvxM4CCUgrJAZoWOBsCKds+KkUFfrtkrhAuMmpQKlTucSAVTAlUhhcQHCKrX10+7Kk4DvkE0Ucsy7dOnS634KipyTxIZvNu0OE3fnJY1o+OMPxB5kJhnM23TtrDkeXG9dogVWOePUESlD5Uz9gsxWilEiwnM5KWLcPrJfJBk7zaRxzMfEkJHCd2RhCUksSk4t1b26qBlFhoHjVEXqoF7Fkja6FEda2gUNkRtlS4WjWA/mpW6KPLxWiXSj/7/XwrFeLMmhCTv8imVB7UX2kA+nbbtYtofVkAhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iAnf1q1GmBruU5+meSAtcHuAxuAsjMe6/saPoy4Ve1c=;
 b=fJ7zLYw7+G5XcV2IcMd/l2AI20bUL0kf510vZf1x8GgkM+tF2RE0pIh10EJbj8a+QuRjp9YcYWk2TMNvMydPaLAReA1iuJQ4BI2C3Ure2qYWghZrXvq40TZoHkXE+DKfZfkUy754e4ANmoju5EtS4+XjTpwNURCnd/wBIFPce6GJ6JjNnIYm6zrxiwOFV6AiwiGrO4RrdjZLIJD8cLBHWgwnu6kNEpBQPVKbgwUmzPGVBfcTmiXAb53eT+0vyu3VTO48xn6EpLENhcFXxRO8hzsfJ9xjFFN0StV992gz+EkTiIpHR/8+RNcTDbh/6DN0r8npYGh45lCW5GJCy17o3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAnf1q1GmBruU5+meSAtcHuAxuAsjMe6/saPoy4Ve1c=;
 b=aVX7jyHsA7/XAvwtc8OvkhjLrnQui6Zr+YaHMYjDyU/rExHILhBxJjEVkPI0IZP8UznsD0cT7NY2py47GXD92jVRwET0q7rUwdVx9IciqyiBHqM/LFtApbC8TQUMcH8+UyT9mGycnLVu5Zbjf/QJBJX08jRkYJhrSbMa1t6WaRQ=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM4PR0501MB2756.eurprd05.prod.outlook.com (2603:10a6:200:5c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Tue, 7 Jun
 2022 03:20:57 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::54a3:51be:7e4:ffa7]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::54a3:51be:7e4:ffa7%5]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 03:20:57 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Xin Long <lucien.xin@gmail.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
Thread-Index: AQHYec5EVkjWLYCsmEWwB4J9y4LhM61Cqe8AgACamwA=
Date: Tue, 7 Jun 2022 03:20:57 +0000
Message-ID: <DB9PR05MB9078054C471650427E268FFD88A59@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <f08fdb9faeb9646f8306492f0899c5d257045c91.1654537961.git.lucien.xin@gmail.com>
 <CADvbK_ctreM5dF_sVkeFVV9-+U1Z=JHT7GJhDCd_Xb+=5VikAg@mail.gmail.com>
In-Reply-To: <CADvbK_ctreM5dF_sVkeFVV9-+U1Z=JHT7GJhDCd_Xb+=5VikAg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89df871a-4405-4f72-85dd-08da4834bd0f
x-ms-traffictypediagnostic: AM4PR0501MB2756:EE_
x-microsoft-antispam-prvs: <AM4PR0501MB2756190294C4DB18AA8D89A488A59@AM4PR0501MB2756.eurprd05.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OH2qAd7loMCYN9XUKNfo4IIYlq7YjV6zd+HCvr140bYNFX+hOa4RJCMYYw07pzHfXfvx6GcvBXLryYvIwbNfZ9Fl3qxd8Y7qZhwCrGyrNZFsai0ktUWzAN7E25mNgY2OrcZapyWzI2NVneGHxmFEtSK3vRTq0XmKmUJcf3z+JEzoVZu2D8iOe9EIikIU4AyRgIH3DK9+hEP28z6MdyTAgi2WT0jnR5Qeldl/x3rYlfMUkWz2ML3Rv3rz6Mcg0tNWVuqSm+1QmPGdwtc0QzLPLbCtn7iJ55dnultDXaoDWU8tympf+o7ea7LmaSFFKh6z+qsYlP/NKN8ksVpeFHV/dR1CKZb55zmCNU3XTVVHYpefLw0C7SBz5+oz6d4HI8tV+s2EcL7P4wVIJxrkREHFvNZzoZ85iyl6SMsbB/4MumOBAQBbNi8qz6vXPsG1AfRGBW7JJCeEzQw1JyDO+9awzxqRhMqZ/ZiF9hq20U8E9VvQzdJNDv8uN8s6mBzve8oQv4FpDR45PHcdk4Mex6Od3BzZKGpJhsbET+OSUeBReUpRmLjdcKVbrHcyL9/E9tFcvFmvzyxrhz7UAInStT2AU/CwvS5LSQLF/W4McpF6mntc63y4ugRGQygRJLODZGRdC5dBVB+MJtCS8BKzIUty4GQ8Yucp2C0ljShZFZjAgV2jYd7v7BInLZ8+Bcm/TMTk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(8936002)(8676002)(122000001)(5660300002)(38070700005)(76116006)(66556008)(66476007)(66446008)(66946007)(64756008)(316002)(55016003)(33656002)(83380400001)(86362001)(38100700002)(508600001)(52536014)(110136005)(53546011)(71200400001)(7696005)(9686003)(6506007)(26005)(186003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bYqzmYR4fwyG2wGCyKl8l7iJLaaTy9o7mYSZraQH6Nx/krW4lXDgdKzmJExK?=
 =?us-ascii?Q?zKJbmSQ3zCy1QbSO09dQDN8WbnHhNSPiD7l0uhytAReHMOzW1IdawG1Y+nZc?=
 =?us-ascii?Q?l2IJRM92xNkkEVnHvbtrzSSpgtm0cM4wbq4lnhRBNlll4WjrOdKA3hApNV/I?=
 =?us-ascii?Q?6MUElXyxoedO2DxwhD/rsHUN45EjIcKPTnnilhSIYfTHocnRlERPcAjlzJep?=
 =?us-ascii?Q?fgihlJj17HM5fiul/sKlkqlEB8RC54WzvzXFPNVeSuSNhnCHHpHPhw+KGBvG?=
 =?us-ascii?Q?dm2519m/WoJAgZgohLIdhKCzRiaJS+NswMZ/dzt+gfHpyBHhRJ4YSlrmFNeD?=
 =?us-ascii?Q?DvRkIRREaNO3kJdE6FVpF0mxgL6ghipRg6C6gmmj/p1V1ghPG1AFvC+4/d2J?=
 =?us-ascii?Q?mwCo8qphg5/MUwJcyvHpUi2cr1NqYcHTiiyq1+jHVwyu2nhJiCUtr4ywinxG?=
 =?us-ascii?Q?/7/64GbQmtq+0K3I6Rapca4JyFYXyGmzZYscFhMEhYNTh6dOaID/+qaq+MoJ?=
 =?us-ascii?Q?f6oK6hVfjDHTs8deMnpetiHlNGFp6F9pzTN2fq6HayQNfXAlGuINl9eGMnK7?=
 =?us-ascii?Q?6oNvZlrJJr/FbMwobHh5gqrzNlfY27MOLVay6rqUeVg5jINx5vE1OxmMbEQc?=
 =?us-ascii?Q?CX75LVVNLooNTbLCbzHPqKoweLyDNRLcrSUHpZRfmQIFeTuSW3ZTwbOAjMhm?=
 =?us-ascii?Q?5CJLP2ubG32CZo2I94cmqUsLbK3XKLOP7r6fU1kopbTliAG++7pvZSFjKegX?=
 =?us-ascii?Q?+25XbDEWMG0V6kFEv2L3qvdDdGVTdbHWTq/nSlRcFP/GQRwfUj8xa68ZnTGE?=
 =?us-ascii?Q?U+bmbch+/awilY4bzfd6Oa3WYGqerU9mlcjmVfPw4AGm/2IMyLOZKCI0qUoW?=
 =?us-ascii?Q?nzIEDUMUwr6ogwVow8egWnxQklFBsq1WEhh5JH89BR2DcOYput7BT2UWuk57?=
 =?us-ascii?Q?q3IBABM3zwOHavMlppr4Z39HhzjuRdseg6gwecapLR2FqS4tDyTBmX/L8trh?=
 =?us-ascii?Q?hrPeFRh57FsY/twz/WP8qbw4KG/mwFnCa/y7sHsvSGnasZrnVfwdEBs+h+ku?=
 =?us-ascii?Q?+pslV2m8mAN6X+V4xiUeEdkAEMevJkfGfgOYDfsNGLqjGba/Px1Gjdiurf4Q?=
 =?us-ascii?Q?jSs5G1f7mHS5G/+dhH2LVHBhcaWKL1pHxJbBa0UW6xjj1pxdYIjOomTfsLpB?=
 =?us-ascii?Q?v7fqgCk0SbO5uImC1CJI6QPPZEYNJAPFUmaZzA0VVfOVyyKKmL6glkd2cPK4?=
 =?us-ascii?Q?1K3P6p54lxlii+FGdWd2zD/Fb9nMOJim1cFr3J3a3oh4Vonj0ACDzxN31hny?=
 =?us-ascii?Q?aWqmq935k/T4m5dXYV6ZQM2O3qlMeIbPclPoxAUpwcVC0/wqPCtlPCK/cB5t?=
 =?us-ascii?Q?+QY3vn3kEMwA6SJVdGi3w6gp3wlzdw6uNZnFiDj5XRPb9aMeowHoIv/nFwd6?=
 =?us-ascii?Q?Ht566rvgM51FLOgjBX3wI4JQFq9rpRZdRgSx7LF+kZkc5g5LXoapMweUTf3p?=
 =?us-ascii?Q?t1SXNkG57adgZKCiF766WsXCEy+FfgiHpCSy23tFlgTCCWxoTIqDBgqUgq9O?=
 =?us-ascii?Q?7vRp6bAw2zJJY7W4nGFs83U07cIfnkgAKh6uE86pH4X/FKz9axKkai20yL1i?=
 =?us-ascii?Q?8dQa+Vjby5MuVhciUIta01mGC+RPwMEUuQ5tWnhPmezbEaLpeZOsgCHlXsUP?=
 =?us-ascii?Q?QIpcXFHCwdGMCUcg/Fy9fCn/zrVEXYHf8I9PnpubxTdbeaWZOfGxg3WfhjG8?=
 =?us-ascii?Q?rbL1RytZhV3VDvIJc/WSE+aXOpPkYdg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89df871a-4405-4f72-85dd-08da4834bd0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2022 03:20:57.3444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YHHVoKontMS1H+tBHJb6MhtJwp75d62b0kmzqv/nz0CGjLDUyy6bKS1E1J7DOTGIjP97IbvRaALxop6Aljkzixm81LdFdGqvEtXHPaojPc4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2756
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.95 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.95 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nyQ0A-0005MX-SC
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
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

> -----Original Message-----
> From: Xin Long <lucien.xin@gmail.com>
> Sent: Tuesday, June 7, 2022 12:57 AM
> To: tipc-discussion@lists.sourceforge.net
> Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from tipc_bc_base
> 
> fix Jon's email address.
> 
> On Mon, Jun 6, 2022 at 1:52 PM Xin Long <lucien.xin@gmail.com> wrote:
> >
> > After Commit 2af5ae372a4b ("tipc: clean up unused code and structures"),
> > there is no place really using tn->bcbase->inputq. This patch is to
> > delete this member from struct tipc_bc_base.

We cannot delete this queue because it is currently used to contain wakeup messages for broadcast send link.
See this calling flow: tipc_rcv() --> tipc_node_bc_sync_rcv() --> tipc_bcast_sync_rcv() --> tipc_link_bc_ack_rcv() --> link_prepare_wakeup()
link_prepare_wakeup() copies wakeup messages from the wakeup queue to the tipc_bc_base->inputq. Then, the wakeup is done in tipc_bcast_sync_rcv()



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
