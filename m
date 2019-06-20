Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C324CCDF
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 13:26:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdvD0-0005kU-5I; Thu, 20 Jun 2019 11:26:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hdvCy-0005k1-KG
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 11:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5HOC9Eux65lyRpwL0O1qslzeu6ek4GzDaXvo7rfvJQ=; b=Rk9Ydjbn39fKlBQsLJNF2qq6po
 PvCntzb9ra/Ndwp6fuN/WwuX2fRg14ORxzPGyxEExSjEezgu4Hq/yJ9+xz5ZC2CqZGuj5vSXsgnj+
 U8enuFSsje1x1g/n97Ihu8nqkkoqO7eds4Rue14d2wpYLNbfJdh1royz7J6a4iTMtURQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y5HOC9Eux65lyRpwL0O1qslzeu6ek4GzDaXvo7rfvJQ=; b=ZjDD/WqEVZ1G5g2ziZdzTdwJAm
 OQyVl+7++0r+pHlSWqal0T9uonoJMgHlSXxlA8eJMFarlHqoYQpriXceVqdxgPFGkcCU/PaLKWa1E
 QYnamiqrBM6asCHZgX3TuBqUEBnaFumOfiknr7iM8GpVp7s293BjbtM82jd70rzNKWqI=;
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hdvCy-00610a-Jo
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 11:26:26 +0000
Received: by mail-wm1-f66.google.com with SMTP id h19so6704915wme.0
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Jun 2019 04:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y5HOC9Eux65lyRpwL0O1qslzeu6ek4GzDaXvo7rfvJQ=;
 b=rRVl5Yb6N9419hBFnVbgMb3DYvDfAQ8o0DJzVBiNi+YE+Dgq6KSdOrCUrf3WVeeFwx
 2posYmOZew8kprBMjFFF57KKkfyk7cqA6Z1l5DqDZTqHYM0MPQexQoqQUU0JLZVwdzjp
 zOw6cQOxuc0OHMPH/KyLQUVDiJSc43tUXcaCpzTqnVU3NN/1+3D+7Mpd2usawPc6OotQ
 1GfFI12imoUkoYdzRloBzWQVUVCZY5EODKO6NrqIkKxWUU/tVswfhen4td/kU8/ZE2K1
 D9xcfVxt88FirzC4F1TpfDKQnKiUZ7wu8HpDUvTiZTeX7qEj0osaCf3MLdt25/m5n3SH
 P6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y5HOC9Eux65lyRpwL0O1qslzeu6ek4GzDaXvo7rfvJQ=;
 b=Uv0XF4Jp8yVPLfSoJ2wHGRXu6T1iXq6VUsEMAzTJpDSFwfZueunfz9lPHcZX+DntDl
 T23Q7e9bWNYImhojZUyTPvQTcCuYEJWvE8tfSndsSc86lZUmmJBBgqk5olcQorN2W8Qx
 KWSK6NFRvOMQj8nV6mIu7UZgTtFaqyDx6kw13U5/LI6ZMEXyIqodioCpsPKfTK+TJCel
 T5/WjNR7qL9f5/zBs8MqteBg/HnKIk+WTKrli8agK6ihQDicL19NAknMw0CRLKbghTNK
 1lFLxoO10ZeZTJFrm1hobZJmOnQm463/Zzg+UlXnUu7F1Oxzvtu+hnvqqsR9yxRgvrDC
 2HLA==
X-Gm-Message-State: APjAAAUJK93BM5B50WL0OxivpQZh8UaNyhi0gAEM+wLP8cn/eJNYj7uL
 vvzr9ehN5gUQMPIdzAdmCXz/ychQIOShB6xWn4MDSuYm
X-Google-Smtp-Source: APXvYqzE2KV7gNNJjCRfgyn92EHQYuOnBRgECv/kvs2nZCn54RSGJsNSNiMB2f19mhjKrLyR/lc5IpG/p3pycaDLSJY=
X-Received: by 2002:a1c:228b:: with SMTP id i133mr2556979wmi.140.1561029978114; 
 Thu, 20 Jun 2019 04:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560778340.git.lucien.xin@gmail.com>
 <CH2PR15MB3575BBA6196E4ACFA6C42BA49AEB0@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB3575BBA6196E4ACFA6C42BA49AEB0@CH2PR15MB3575.namprd15.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Thu, 20 Jun 2019 19:26:06 +0800
Message-ID: <CADvbK_eGiYrRCVYxnVnWxHByHCqScEHJ+uKY6jfNBbUM6k7x3g@mail.gmail.com>
To: Jon Maloy <jon.maloy@ericsson.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hdvCy-00610a-Jo
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

On Mon, Jun 17, 2019 at 10:28 PM Jon Maloy <jon.maloy@ericsson.com> wrote:
>
> Hi Xin,
> As I remember the discussion around introduction of UDP media a few years ago, the developer, Erik Huge, only chose to register TIPC as a udp tunnel user instead of regular udp user because it provides a more efficient way to receive packet in kernel space.
> With UDP tunnel, we could receive packet directly in a callback, while TIPC had to run in a work queue thread in order to read packets from the socket. So, in reality we don't need any tunnel at all. Another upside is that it is possible to hook in a GSO callback function from the tunnel user, something I am uncertain if we can do as a regular UDP user.

Right, udp tunnel was invented for this kind of encapsulation.

To implement this gso callback, we need to require an ipproto number for TIPC,
and register the callback into inet_offloads by inet_add_offload().
And on tx path set:
skb->encapsulation = 1,
skb_shinfo(skb)->gso_type|= SKB_GSO_UDP_TUNNEL,
skb->inner_protocol_type = ENCAP_TYPE_IPPROTO.

Then it will be called by:
dev_queue_xmit() .. -> skb_mac_gso_segment() ... ->
udp4_ufo_fragment() -> skb_udp_tunnel_segment() ->
skb_udp_tunnel_segment() -> tipc_gso_fragment()

btw, do we have an official ipproto number for TIPC already?

> Do you have any comments on this? Could it possibly be done differently?
>
> ///jon
>
>
> > -----Original Message-----
> > From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> > Behalf Of Xin Long
> > Sent: 17-Jun-19 09:34
> > To: network dev <netdev@vger.kernel.org>
> > Cc: davem@davemloft.net; Jon Maloy <jon.maloy@ericsson.com>; Ying Xue
> > <ying.xue@windriver.com>; tipc-discussion@lists.sourceforge.net; Marcelo
> > Ricardo Leitner <marcelo.leitner@gmail.com>; Neil Horman
> > <nhorman@tuxdriver.com>; Su Yanjun <suyj.fnst@cn.fujitsu.com>; David
> > Ahern <dsahern@gmail.com>; syzkaller-bugs@googlegroups.com; Dmitry
> > Vyukov <dvyukov@google.com>; Pravin B Shelar <pshelar@nicira.com>
> > Subject: [PATCH net 0/3] net: fix quite a few dst_cache crashes reported by
> > syzbot
> >
> > There are two kinds of crashes reported many times by syzbot with no
> > reproducer. Call Traces are like:
> >
> >      BUG: KASAN: slab-out-of-bounds in rt_cache_valid+0x158/0x190
> >      net/ipv4/route.c:1556
> >        rt_cache_valid+0x158/0x190 net/ipv4/route.c:1556
> >        __mkroute_output net/ipv4/route.c:2332 [inline]
> >        ip_route_output_key_hash_rcu+0x819/0x2d50 net/ipv4/route.c:2564
> >        ip_route_output_key_hash+0x1ef/0x360 net/ipv4/route.c:2393
> >        __ip_route_output_key include/net/route.h:125 [inline]
> >        ip_route_output_flow+0x28/0xc0 net/ipv4/route.c:2651
> >        ip_route_output_key include/net/route.h:135 [inline]
> >      ...
> >
> >    or:
> >
> >      kasan: GPF could be caused by NULL-ptr deref or user memory access
> >      RIP: 0010:dst_dev_put+0x24/0x290 net/core/dst.c:168
> >        <IRQ>
> >        rt_fibinfo_free_cpus net/ipv4/fib_semantics.c:200 [inline]
> >        free_fib_info_rcu+0x2e1/0x490 net/ipv4/fib_semantics.c:217
> >        __rcu_reclaim kernel/rcu/rcu.h:240 [inline]
> >        rcu_do_batch kernel/rcu/tree.c:2437 [inline]
> >        invoke_rcu_callbacks kernel/rcu/tree.c:2716 [inline]
> >        rcu_process_callbacks+0x100a/0x1ac0 kernel/rcu/tree.c:2697
> >      ...
> >
> > They were caused by the fib_nh_common percpu member
> > 'nhc_pcpu_rth_output'
> > overwritten by another percpu variable 'dev->tstats' access overflow in tipc
> > udp media xmit path when counting packets on a non tunnel device.
> >
> > The fix is to make udp tunnel work with no tunnel device by allowing not to
> > count packets on the tstats when the tunnel dev is NULL in Patches 1/3 and
> > 2/3, then pass a NULL tunnel dev in tipc_udp_tunnel() in Patch 3/3.
> >
> > Xin Long (3):
> >   ip_tunnel: allow not to count pkts on tstats by setting skb's dev to
> >     NULL
> >   ip6_tunnel: allow not to count pkts on tstats by passing dev as NULL
> >   tipc: pass tunnel dev as NULL to udp_tunnel(6)_xmit_skb
> >
> >  include/net/ip6_tunnel.h  | 9 ++++++---  net/ipv4/ip_tunnel_core.c | 9
> > ++++++---
> >  net/tipc/udp_media.c      | 8 +++-----
> >  3 files changed, 15 insertions(+), 11 deletions(-)
> >
> > --
> > 2.1.0
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
