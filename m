Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B42DD485D7
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Jun 2019 16:44:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcsrd-0003MM-0M; Mon, 17 Jun 2019 14:44:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hcsrb-0003MF-Li
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 14:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yV8wnqL9Wm8KF09x8oku9xbcsx0qe128UTb5gWHGdVU=; b=h43JWlXwbKN43NhGbvnTXlb0kV
 DwhMZxE4cHd5avw0DDpfwDSFLNT6VnBaHv/f3PdwkSQRNiARV9ZhJBb/mHfZZ6yypOqWMEmzpfd9f
 vRJF+29Y4h1DkPb51I2Hpkzz8aXZMYaizkIORdJdjxGV7tHfW9XGi96qYfbbn3CKwP3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yV8wnqL9Wm8KF09x8oku9xbcsx0qe128UTb5gWHGdVU=; b=MSDyeiidny+x9kl/bfJK7gQoIw
 yFtiWiws7N6JS2dw0Dik0QbycSMTfQPkcZg/AjW3x6Z1UmIs+G9eKPwhETSRveQWGZ6ugoUWK7Vwb
 txE2AQWrn8GR33vVRQZGrywnRkK7Xxw1TeKIaDTqL5xloBF0NN6EGD+N54cOFdOj1JO0=;
Received: from mail-eopbgr820081.outbound.protection.outlook.com
 ([40.107.82.81] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcsrW-001CxY-7z
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 14:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yV8wnqL9Wm8KF09x8oku9xbcsx0qe128UTb5gWHGdVU=;
 b=ECT0FLZV8Zx8dEcZlahXHlMvs+GoiaSetKrk6LFycLhoxB4Nq//k5qbkQC/jO145wL8ppzHgSmQS2Eho64/EfJCNv1cCPVN0ToXgrtnbZ3STdk+z50DyeYXGDbHNw36oVJYBeGxK9DaFOIMCG0i372Qy+TGLDJJU3E4rxAL0tSk=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3703.namprd15.prod.outlook.com (52.132.230.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Mon, 17 Jun 2019 14:28:00 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 14:28:00 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Xin Long <lucien.xin@gmail.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH net 0/3] net: fix quite a few dst_cache crashes reported
 by syzbot
Thread-Index: AQHVJRHtCwIkyNVJxkmXLESDqEZYZ6af44MA
Date: Mon, 17 Jun 2019 14:28:00 +0000
Message-ID: <CH2PR15MB3575BBA6196E4ACFA6C42BA49AEB0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <cover.1560778340.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1560778340.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8158791-366d-436f-61dc-08d6f3300046
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3703; 
x-ms-traffictypediagnostic: CH2PR15MB3703:
x-microsoft-antispam-prvs: <CH2PR15MB3703A59AB3562E2AAEDA7EF59AEB0@CH2PR15MB3703.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39860400002)(396003)(366004)(189003)(199004)(13464003)(14454004)(7736002)(86362001)(74316002)(26005)(186003)(52536014)(2906002)(8936002)(81166006)(81156014)(8676002)(33656002)(66066001)(305945005)(99286004)(44832011)(5660300002)(486006)(6506007)(229853002)(53546011)(476003)(110136005)(3846002)(6116002)(11346002)(9686003)(6436002)(2501003)(76176011)(71190400001)(71200400001)(316002)(66946007)(76116006)(73956011)(6246003)(66556008)(64756008)(66446008)(256004)(68736007)(55016002)(14444005)(66476007)(478600001)(53936002)(7696005)(102836004)(446003)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3703;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1e9joTNGz2YODoE8Tu1eWKvnYtxUo8GNFyyUux2aDTTEJ8wLF3Qwe4IQdk0Lh5yQ2bkZgQIT8JqCI4CfO7JyHYD9fzNmH50mmxN3Sm6LbtcuBradyTMCKjpw2Gylm+1kAFE2+rjgSY284cwek/qKBbW4xtvhExDdI6aQGCCjbTfNajkpIpqw40n35Q5bFU5XBDwuFSRr9AwAt4Ux9AKgG75MT+7X/4GVct32QyCMm6u4rm/4T7VSpyB/KAG7WNoa5SvAoJozyCgVHig62URpP4ntZeZDjbQiCco6Vph0eWW2mDFfl9Rr2WKSyU5XwzsT162WfMfh/RR804AnrKbFRV2KjIZGX2scjkroQNWrYxIjhyexAxRolW16WTDWKWFlHlinVnol3Wm4ZwFaxCJKiwO3w5E1GBu9SV2f7U6Jfb8=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8158791-366d-436f-61dc-08d6f3300046
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 14:28:00.5977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3703
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hcsrW-001CxY-7z
Subject: Re: [tipc-discussion] [PATCH net 0/3] net: fix quite a few
 dst_cache crashes reported by syzbot
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

Hi Xin,
As I remember the discussion around introduction of UDP media a few years ago, the developer, Erik Huge, only chose to register TIPC as a udp tunnel user instead of regular udp user because it provides a more efficient way to receive packet in kernel space. 
With UDP tunnel, we could receive packet directly in a callback, while TIPC had to run in a work queue thread in order to read packets from the socket. So, in reality we don't need any tunnel at all. Another upside is that it is possible to hook in a GSO callback function from the tunnel user, something I am uncertain if we can do as a regular UDP user.
Do you have any comments on this? Could it possibly be done differently?

///jon


> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Xin Long
> Sent: 17-Jun-19 09:34
> To: network dev <netdev@vger.kernel.org>
> Cc: davem@davemloft.net; Jon Maloy <jon.maloy@ericsson.com>; Ying Xue
> <ying.xue@windriver.com>; tipc-discussion@lists.sourceforge.net; Marcelo
> Ricardo Leitner <marcelo.leitner@gmail.com>; Neil Horman
> <nhorman@tuxdriver.com>; Su Yanjun <suyj.fnst@cn.fujitsu.com>; David
> Ahern <dsahern@gmail.com>; syzkaller-bugs@googlegroups.com; Dmitry
> Vyukov <dvyukov@google.com>; Pravin B Shelar <pshelar@nicira.com>
> Subject: [PATCH net 0/3] net: fix quite a few dst_cache crashes reported by
> syzbot
> 
> There are two kinds of crashes reported many times by syzbot with no
> reproducer. Call Traces are like:
> 
>      BUG: KASAN: slab-out-of-bounds in rt_cache_valid+0x158/0x190
>      net/ipv4/route.c:1556
>        rt_cache_valid+0x158/0x190 net/ipv4/route.c:1556
>        __mkroute_output net/ipv4/route.c:2332 [inline]
>        ip_route_output_key_hash_rcu+0x819/0x2d50 net/ipv4/route.c:2564
>        ip_route_output_key_hash+0x1ef/0x360 net/ipv4/route.c:2393
>        __ip_route_output_key include/net/route.h:125 [inline]
>        ip_route_output_flow+0x28/0xc0 net/ipv4/route.c:2651
>        ip_route_output_key include/net/route.h:135 [inline]
>      ...
> 
>    or:
> 
>      kasan: GPF could be caused by NULL-ptr deref or user memory access
>      RIP: 0010:dst_dev_put+0x24/0x290 net/core/dst.c:168
>        <IRQ>
>        rt_fibinfo_free_cpus net/ipv4/fib_semantics.c:200 [inline]
>        free_fib_info_rcu+0x2e1/0x490 net/ipv4/fib_semantics.c:217
>        __rcu_reclaim kernel/rcu/rcu.h:240 [inline]
>        rcu_do_batch kernel/rcu/tree.c:2437 [inline]
>        invoke_rcu_callbacks kernel/rcu/tree.c:2716 [inline]
>        rcu_process_callbacks+0x100a/0x1ac0 kernel/rcu/tree.c:2697
>      ...
> 
> They were caused by the fib_nh_common percpu member
> 'nhc_pcpu_rth_output'
> overwritten by another percpu variable 'dev->tstats' access overflow in tipc
> udp media xmit path when counting packets on a non tunnel device.
> 
> The fix is to make udp tunnel work with no tunnel device by allowing not to
> count packets on the tstats when the tunnel dev is NULL in Patches 1/3 and
> 2/3, then pass a NULL tunnel dev in tipc_udp_tunnel() in Patch 3/3.
> 
> Xin Long (3):
>   ip_tunnel: allow not to count pkts on tstats by setting skb's dev to
>     NULL
>   ip6_tunnel: allow not to count pkts on tstats by passing dev as NULL
>   tipc: pass tunnel dev as NULL to udp_tunnel(6)_xmit_skb
> 
>  include/net/ip6_tunnel.h  | 9 ++++++---  net/ipv4/ip_tunnel_core.c | 9
> ++++++---
>  net/tipc/udp_media.c      | 8 +++-----
>  3 files changed, 15 insertions(+), 11 deletions(-)
> 
> --
> 2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
