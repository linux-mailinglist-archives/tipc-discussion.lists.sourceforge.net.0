Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E61AD1EEDCE
	for <lists+tipc-discussion@lfdr.de>; Fri,  5 Jun 2020 00:39:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jgyW2-0008FY-Pe; Thu, 04 Jun 2020 22:39:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jgyW1-0008FH-3s
 for tipc-discussion@lists.sourceforge.net; Thu, 04 Jun 2020 22:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VJTFc+2y7VBzJEakHM7yJ8BJYEk69+BypeEezGCcsOc=; b=gpMhrME8KFBUXnDYPcweFLHg4K
 RaTVpEjtY4dZLMBqFXEpp8Pbx/6sjMXi1yBSM/sd/H4vU/QNLO/FVNEdDek0D4FduWIouSQDUFoKj
 21TUvnzXiEWjdr9LzZ0UOGMh2SN4wmDk3cGU7tzZCIdzWzob4Nz2WCk+KHk8guI8kcgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VJTFc+2y7VBzJEakHM7yJ8BJYEk69+BypeEezGCcsOc=; b=RroVIi+8uV5xKdpXMcSBB8XMUW
 ctUHNwZsbaA6bT+uLdnkasFz1DYK73CqbB14ZYhuzcDjv5BLNltNoVLOPvB3fQsaN/7C6hafZ1Ct1
 CjMx9rYJT5OspHw4MLMH3atk7nAjr31G7r9gAd82aWYbQTrhnwLcsx1uKTcoFfCsg0JE=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jgyVx-00CBp6-FL
 for tipc-discussion@lists.sourceforge.net; Thu, 04 Jun 2020 22:39:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 748CD120477C4;
 Thu,  4 Jun 2020 15:39:02 -0700 (PDT)
Date: Thu, 04 Jun 2020 15:39:01 -0700 (PDT)
Message-Id: <20200604.153901.141941797676227009.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200603050601.19570-1-tuong.t.lien@dektech.com.au>
References: <20200603050601.19570-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 04 Jun 2020 15:39:02 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jgyVx-00CBp6-FL
Subject: Re: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference
 in streaming
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Wed,  3 Jun 2020 12:06:01 +0700

> syzbot found the following crash:
 ...
> Call Trace:
>  tipc_sendstream+0x4c/0x70 net/tipc/socket.c:1533
>  sock_sendmsg_nosec net/socket.c:652 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:672
>  ____sys_sendmsg+0x32f/0x810 net/socket.c:2352
>  ___sys_sendmsg+0x100/0x170 net/socket.c:2406
>  __sys_sendmmsg+0x195/0x480 net/socket.c:2496
>  __do_sys_sendmmsg net/socket.c:2525 [inline]
>  __se_sys_sendmmsg net/socket.c:2522 [inline]
>  __x64_sys_sendmmsg+0x99/0x100 net/socket.c:2522
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
>  entry_SYSCALL_64_after_hwframe+0x49/0xb3
> RIP: 0033:0x440199
> ...
> 
> This bug was bisected to commit 0a3e060f340d ("tipc: add test for Nagle
> algorithm effectiveness"). However, it is not the case, the trouble was
> from the base in the case of zero data length message sending, we would
> unexpectedly make an empty 'txq' queue after the 'tipc_msg_append()' in
> Nagle mode.
> 
> A similar crash can be generated even without the bisected patch but at
> the link layer when it accesses the empty queue.
> 
> We solve the issues by building at least one buffer to go with socket's
> header and an optional data section that may be empty like what we had
> with the 'tipc_msg_build()'.
> 
> Note: the previous commit 4c21daae3dbc ("tipc: Fix NULL pointer
> dereference in __tipc_sendstream()") is obsoleted by this one since the
> 'txq' will be never empty and the check of 'skb != NULL' is unnecessary
> but it is safe anyway.
> 
> Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied and queued up for -stable, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
