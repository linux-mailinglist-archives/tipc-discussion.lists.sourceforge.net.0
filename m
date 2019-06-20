Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B20F14D2A0
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 18:02:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdzVf-0005ep-Qc; Thu, 20 Jun 2019 16:01:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hdzVf-0005ej-5m
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 16:01:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f+46LPZ6amB5E6F/p4P7iK2eU0PiGEnkGuZqT95BS5s=; b=Rb3TRpPYcZp3OTaQRzjT0+3yD/
 1V5hSPUooXl+MeQBk2b8Bj5j2h112Ygi5S0l30+Jo0UFYlpGUA1Mjbu2dS5rqVL6Dx8Wh5UuBpY88
 mVvdlkYPoSnSDMgam6v1xCXEg7Dbgr+95ocNZz2paZThONmjCOe21UZuBPkckTE9wQPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f+46LPZ6amB5E6F/p4P7iK2eU0PiGEnkGuZqT95BS5s=; b=OwCjVcbd/DpdLgdwYCOaymyjoZ
 8OT7wbFDQmfgoOBiGwwIdxp229ddjLUdz/odUgLx2oq5uoQKRGbDHmLKyjMaRx7mIyGk+ilDwmARk
 OIdfzIjSc2Zh6GwXHVtVXfGyoIqlLQxTOYk1o1BbgCihS8Xgy5ywnUd4MGosx8Gs1Ngo=;
Received: from mail-eopbgr710088.outbound.protection.outlook.com
 ([40.107.71.88] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hdzVc-006eoV-CJ
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 16:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f+46LPZ6amB5E6F/p4P7iK2eU0PiGEnkGuZqT95BS5s=;
 b=JkMlVRAlwVrcYBWLque5p5INaUeyqM9sIxN6ZP9C1QX9OGQJ79TXLgMzAwEBhyofPjyAoUpsjF/ZseC+xkJCCLYFmYY9RsLaJGxWXNBbyUJkZ+nBJyqGhPNxo83Ey1Y603z+VEPkcNRsUxRrDaWKlWytcKfTH5haNBI3S7RmBlQ=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3526.namprd15.prod.outlook.com (10.255.155.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Thu, 20 Jun 2019 16:01:49 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 16:01:49 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Xin Long <lucien.xin@gmail.com>
Thread-Topic: [PATCH net 0/3] net: fix quite a few dst_cache crashes reported
 by syzbot
Thread-Index: AQHVJRHtCwIkyNVJxkmXLESDqEZYZ6af44MAgASIPwCAAC8+gA==
Date: Thu, 20 Jun 2019 16:01:49 +0000
Message-ID: <CH2PR15MB3575186A7D5978EE164AC27E9AE40@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <cover.1560778340.git.lucien.xin@gmail.com>
 <CH2PR15MB3575BBA6196E4ACFA6C42BA49AEB0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CADvbK_eGiYrRCVYxnVnWxHByHCqScEHJ+uKY6jfNBbUM6k7x3g@mail.gmail.com>
In-Reply-To: <CADvbK_eGiYrRCVYxnVnWxHByHCqScEHJ+uKY6jfNBbUM6k7x3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 919dc7a5-5ffb-4bac-64fd-08d6f5989a5e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3526; 
x-ms-traffictypediagnostic: CH2PR15MB3526:
x-microsoft-antispam-prvs: <CH2PR15MB3526A6322F2376FB968F08959AE40@CH2PR15MB3526.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39860400002)(366004)(189003)(199004)(13464003)(26005)(11346002)(486006)(66066001)(71200400001)(71190400001)(53546011)(102836004)(6506007)(476003)(7736002)(76176011)(81156014)(14444005)(6246003)(8676002)(44832011)(33656002)(6916009)(81166006)(7696005)(478600001)(186003)(2906002)(229853002)(446003)(76116006)(86362001)(4326008)(25786009)(5660300002)(256004)(8936002)(99286004)(316002)(64756008)(74316002)(52536014)(66556008)(305945005)(66476007)(73956011)(14454004)(3846002)(66446008)(9686003)(68736007)(6436002)(66946007)(55016002)(6116002)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3526;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C/llAffAJEWjg53fYXmb4QQIh8O+PTZcz7K4zZB4iwen5hx/GjXpBOZ1TkYKl9R9s7hV2tBBjFtEWLNsB1efEYYtq2fCEiGqyJO03yDCg/a/OAvxy0Hske5MpTKnA3dAGW2wAdpIKzeAuO7Q0GeqEV5WhJkCRLlnK7LNvP3Tq+mSs4HisZ4vfXZB+JV2j5c6Tn1UKDDMLpsjODOLldISr5PQMxntjt6QdFJpCpU+2G5H8m+j1hfVuCj7k+2JXkAmaGDNs/fstGDeSTpbUB2SRXxSMJLhh0iSUBIwWyJI7t4pmE2s9zc4+gE4go385J4ABWdc9MliyUcROZkAJM76tLW/UHERpeBNgQTr+yYXfYTRWHfBecazzu0MsVpeG+z+8hzG42BVOcMu+PBzn9yQJU44sLvOYXDuqBdHdkUyhCw=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 919dc7a5-5ffb-4bac-64fd-08d6f5989a5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 16:01:49.1216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3526
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hdzVc-006eoV-CJ
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Xin Long <lucien.xin@gmail.com>
> Sent: 20-Jun-19 07:26
> To: Jon Maloy <jon.maloy@ericsson.com>
> Cc: tipc-discussion@lists.sourceforge.net
> Subject: Re: [PATCH net 0/3] net: fix quite a few dst_cache crashes reported
> by syzbot
> 
> On Mon, Jun 17, 2019 at 10:28 PM Jon Maloy <jon.maloy@ericsson.com>
> wrote:
> >
> > Hi Xin,
> > As I remember the discussion around introduction of UDP media a few years
> ago, the developer, Erik Huge, only chose to register TIPC as a udp tunnel user
> instead of regular udp user because it provides a more efficient way to receive
> packet in kernel space.
> > With UDP tunnel, we could receive packet directly in a callback, while TIPC
> had to run in a work queue thread in order to read packets from the socket.
> So, in reality we don't need any tunnel at all. Another upside is that it is
> possible to hook in a GSO callback function from the tunnel user, something I
> am uncertain if we can do as a regular UDP user.
> 
> Right, udp tunnel was invented for this kind of encapsulation.
> 
> To implement this gso callback, we need to require an ipproto number for
> TIPC, and register the callback into inet_offloads by inet_add_offload().
> And on tx path set:
> skb->encapsulation = 1,
> skb_shinfo(skb)->gso_type|= SKB_GSO_UDP_TUNNEL,
> skb->inner_protocol_type = ENCAP_TYPE_IPPROTO.
> 
> Then it will be called by:
> dev_queue_xmit() .. -> skb_mac_gso_segment() ... ->
> udp4_ufo_fragment() -> skb_udp_tunnel_segment() ->
> skb_udp_tunnel_segment() -> tipc_gso_fragment()

This has already been done.

> 
> btw, do we have an official ipproto number for TIPC already?

No, I didn't push for this, since I was uncertain if it would be needed.

I did an experiment with this, as follows:
- I defined a new IPPROTO_TIPC and added it to the relevant locations in the network stack.
- I created a raw socket and sent packets from that via the ip_build_and_send_pkt() function.
- I registered a new tipc_ip_rcv() function via the inet_add_protocol() function.

This of course would require a new TIPC_GSO type, but we would avoid the horrendously deep call chain we currently have SKB_GSO_UDP_TUNNEL. 
I am pretty sure this was one of the reasons I was unable to improve performance this way.
I am also uncertain how a new IP protocol would be handled by existing routers and filters.

///jon


> 
> > Do you have any comments on this? Could it possibly be done differently?
> >
> > ///jon
> >
> >
> > > -----Original Message-----
> > > From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org>
> On
> > > Behalf Of Xin Long
> > > Sent: 17-Jun-19 09:34
> > > To: network dev <netdev@vger.kernel.org>
> > > Cc: davem@davemloft.net; Jon Maloy <jon.maloy@ericsson.com>; Ying
> > > Xue <ying.xue@windriver.com>; tipc-discussion@lists.sourceforge.net;
> > > Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>; Neil Horman
> > > <nhorman@tuxdriver.com>; Su Yanjun <suyj.fnst@cn.fujitsu.com>; David
> > > Ahern <dsahern@gmail.com>; syzkaller-bugs@googlegroups.com; Dmitry
> > > Vyukov <dvyukov@google.com>; Pravin B Shelar <pshelar@nicira.com>
> > > Subject: [PATCH net 0/3] net: fix quite a few dst_cache crashes
> > > reported by syzbot
> > >
> > > There are two kinds of crashes reported many times by syzbot with no
> > > reproducer. Call Traces are like:
> > >
> > >      BUG: KASAN: slab-out-of-bounds in rt_cache_valid+0x158/0x190
> > >      net/ipv4/route.c:1556
> > >        rt_cache_valid+0x158/0x190 net/ipv4/route.c:1556
> > >        __mkroute_output net/ipv4/route.c:2332 [inline]
> > >        ip_route_output_key_hash_rcu+0x819/0x2d50
> net/ipv4/route.c:2564
> > >        ip_route_output_key_hash+0x1ef/0x360 net/ipv4/route.c:2393
> > >        __ip_route_output_key include/net/route.h:125 [inline]
> > >        ip_route_output_flow+0x28/0xc0 net/ipv4/route.c:2651
> > >        ip_route_output_key include/net/route.h:135 [inline]
> > >      ...
> > >
> > >    or:
> > >
> > >      kasan: GPF could be caused by NULL-ptr deref or user memory access
> > >      RIP: 0010:dst_dev_put+0x24/0x290 net/core/dst.c:168
> > >        <IRQ>
> > >        rt_fibinfo_free_cpus net/ipv4/fib_semantics.c:200 [inline]
> > >        free_fib_info_rcu+0x2e1/0x490 net/ipv4/fib_semantics.c:217
> > >        __rcu_reclaim kernel/rcu/rcu.h:240 [inline]
> > >        rcu_do_batch kernel/rcu/tree.c:2437 [inline]
> > >        invoke_rcu_callbacks kernel/rcu/tree.c:2716 [inline]
> > >        rcu_process_callbacks+0x100a/0x1ac0 kernel/rcu/tree.c:2697
> > >      ...
> > >
> > > They were caused by the fib_nh_common percpu member
> > > 'nhc_pcpu_rth_output'
> > > overwritten by another percpu variable 'dev->tstats' access overflow
> > > in tipc udp media xmit path when counting packets on a non tunnel device.
> > >
> > > The fix is to make udp tunnel work with no tunnel device by allowing
> > > not to count packets on the tstats when the tunnel dev is NULL in
> > > Patches 1/3 and 2/3, then pass a NULL tunnel dev in tipc_udp_tunnel() in
> Patch 3/3.
> > >
> > > Xin Long (3):
> > >   ip_tunnel: allow not to count pkts on tstats by setting skb's dev to
> > >     NULL
> > >   ip6_tunnel: allow not to count pkts on tstats by passing dev as NULL
> > >   tipc: pass tunnel dev as NULL to udp_tunnel(6)_xmit_skb
> > >
> > >  include/net/ip6_tunnel.h  | 9 ++++++---  net/ipv4/ip_tunnel_core.c
> > > | 9
> > > ++++++---
> > >  net/tipc/udp_media.c      | 8 +++-----
> > >  3 files changed, 15 insertions(+), 11 deletions(-)
> > >
> > > --
> > > 2.1.0
> >

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
