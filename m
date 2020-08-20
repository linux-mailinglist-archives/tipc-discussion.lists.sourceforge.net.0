Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D4824C8BC
	for <lists+tipc-discussion@lfdr.de>; Fri, 21 Aug 2020 01:43:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k8uDC-0001Uz-Ad; Thu, 20 Aug 2020 23:43:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k8uDA-0001Uh-Rf
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Aug 2020 23:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zvrCSzYpMAnQ/TtrAgUdq7fhQoRF5hc6OAAyQxqOivA=; b=B2pFHN0QNlaZURUeUhYWvthzVt
 CWrAebkMooeo6HQNzLe82NrftHXtoEanFtl8vUtH+k3dAJryL5yvFqWrJOuTImAzAKxQHyXWg/m3T
 cFEq0wXLQlkW/i+LW797gHzvN4mKFm9NOltZf6Fu1UjFZWJfCvX8MBb4cn3I9mwDoa1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zvrCSzYpMAnQ/TtrAgUdq7fhQoRF5hc6OAAyQxqOivA=; b=a6rxPgpljF1l7JW7MnLBV5YNAS
 UJSUP4MFETqAczaTAFTdBN9/YE3TrnuGAgEjoV8ephE1lscW1pvpkMUPtK0VTDIhYooVixU43WnvT
 RjbkZvzFQc+LnE/ht2hjNgbWOSyEMFc4NEweGQZ8YPv5+yMx0oKTK1+mw/M/Wy9FegIc=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8uD7-002iv3-Jq
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Aug 2020 23:43:12 +0000
Received: from localhost (c-76-104-128-192.hsd1.wa.comcast.net
 [76.104.128.192]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E55FF1287CBA6;
 Thu, 20 Aug 2020 16:26:12 -0700 (PDT)
Date: Thu, 20 Aug 2020 16:42:58 -0700 (PDT)
Message-Id: <20200820.164258.1142916452755887278.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <7f24b6b0a0d2cb82b9dfbf5343c01266d2840561.1597908887.git.lucien.xin@gmail.com>
References: <7f24b6b0a0d2cb82b9dfbf5343c01266d2840561.1597908887.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 20 Aug 2020 16:26:13 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k8uD7-002iv3-Jq
Subject: Re: [tipc-discussion] [PATCH net] tipc: call rcu_read_lock() in
 tipc_aead_encrypt_done()
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
Date: Thu, 20 Aug 2020 15:34:47 +0800

> b->media->send_msg() requires rcu_read_lock(), as we can see
> elsewhere in tipc,  tipc_bearer_xmit, tipc_bearer_xmit_skb
> and tipc_bearer_bc_xmit().
> 
> Syzbot has reported this issue as:
> 
>   net/tipc/bearer.c:466 suspicious rcu_dereference_check() usage!
>   Workqueue: cryptd cryptd_queue_worker
>   Call Trace:
>    tipc_l2_send_msg+0x354/0x420 net/tipc/bearer.c:466
>    tipc_aead_encrypt_done+0x204/0x3a0 net/tipc/crypto.c:761
>    cryptd_aead_crypt+0xe8/0x1d0 crypto/cryptd.c:739
>    cryptd_queue_worker+0x118/0x1b0 crypto/cryptd.c:181
>    process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
>    worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
>    kthread+0x3b5/0x4a0 kernel/kthread.c:291
>    ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
> 
> So fix it by calling rcu_read_lock() in tipc_aead_encrypt_done()
> for b->media->send_msg().
> 
> Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
> Reported-by: syzbot+47bbc6b678d317cccbe0@syzkaller.appspotmail.com
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied and queued up for -stable, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
