Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 120AD4F91A
	for <lists+tipc-discussion@lfdr.de>; Sun, 23 Jun 2019 01:54:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1heppx-00013J-FY; Sat, 22 Jun 2019 23:54:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1heppv-000136-H4
 for tipc-discussion@lists.sourceforge.net; Sat, 22 Jun 2019 23:54:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AphIG0sBqnib2h5rV1Kcjo7vneGdHB6g3YlBpsxg8Og=; b=GLFddF9vdHMlHdst15G8ahaRac
 7dX+wMDYkN9lleLqV6/smIddUe/fQ7FSsYNDRrY3uc0YBU3XqDw6uXIiSI6pfpPYshRP7S4M03zKn
 o0Es/8tcu9FLix5bokgd4J4ACOkhvygzCA/qy8tPjFSKx5FqG58MEG0HopyBzB3CYSTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AphIG0sBqnib2h5rV1Kcjo7vneGdHB6g3YlBpsxg8Og=; b=MFTsyfijmevwbuwWSdjAY1d3PK
 zPOsuwHzD+6OkFxloNdamvFrU8hX1dLkP0Ff8CJQCvqJsbsdjr7LZDDXKoOHaoCnXMolb4FHAZ+SE
 3thmyaOhBb1qscXASoSExPJo/YS/Q1gPseUNY+XcmgdySJqt4CzqvDBHG+78hOzAvXmo=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1heppt-00A2jC-U2
 for tipc-discussion@lists.sourceforge.net; Sat, 22 Jun 2019 23:54:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5E1D81540C178;
 Sat, 22 Jun 2019 16:54:15 -0700 (PDT)
Date: Sat, 22 Jun 2019 16:54:14 -0700 (PDT)
Message-Id: <20190622.165414.71029280359569399.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1a8f3ada3e0a65b6e9250c4580a7c420b4ddddac.1561027168.git.lucien.xin@gmail.com>
References: <1a8f3ada3e0a65b6e9250c4580a7c420b4ddddac.1561027168.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 22 Jun 2019 16:54:15 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1heppt-00A2jC-U2
Subject: Re: [tipc-discussion] [PATCH net] tipc: change to use
 register_pernet_device
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Thu, 20 Jun 2019 18:39:28 +0800

> This patch is to fix a dst defcnt leak, which can be reproduced by doing:
> 
>   # ip net a c; ip net a s; modprobe tipc
>   # ip net e s ip l a n eth1 type veth peer n eth1 netns c
>   # ip net e c ip l s lo up; ip net e c ip l s eth1 up
>   # ip net e s ip l s lo up; ip net e s ip l s eth1 up
>   # ip net e c ip a a 1.1.1.2/8 dev eth1
>   # ip net e s ip a a 1.1.1.1/8 dev eth1
>   # ip net e c tipc b e m udp n u1 localip 1.1.1.2
>   # ip net e s tipc b e m udp n u1 localip 1.1.1.1
>   # ip net d c; ip net d s; rmmod tipc
> 
> and it will get stuck and keep logging the error:
> 
>   unregister_netdevice: waiting for lo to become free. Usage count = 1
> 
> The cause is that a dst is held by the udp sock's sk_rx_dst set on udp rx
> path with udp_early_demux == 1, and this dst (eventually holding lo dev)
> can't be released as bearer's removal in tipc pernet .exit happens after
> lo dev's removal, default_device pernet .exit.
> 
>  "There are two distinct types of pernet_operations recognized: subsys and
>   device.  At creation all subsys init functions are called before device
>   init functions, and at destruction all device exit functions are called
>   before subsys exit function."
> 
> So by calling register_pernet_device instead to register tipc_net_ops, the
> pernet .exit() will be invoked earlier than loopback dev's removal when a
> netns is being destroyed, as fou/gue does.
> 
> Note that vxlan and geneve udp tunnels don't have this issue, as the udp
> sock is released in their device ndo_stop().
> 
> This fix is also necessary for tipc dst_cache, which will hold dsts on tx
> path and I will introduce in my next patch.
> 
> Reported-by: Li Shuang <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
