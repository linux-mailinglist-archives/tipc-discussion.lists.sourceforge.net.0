Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 725791F6E2E
	for <lists+tipc-discussion@lfdr.de>; Thu, 11 Jun 2020 21:48:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jjTBh-0006eq-I1; Thu, 11 Jun 2020 19:48:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jjTBg-0006ej-K8
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jun 2020 19:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bZzrOy8ZbeOM++f5M4PgA30tjCRKxDzayqbHVKJOgsY=; b=S4BJ4oJFr7HG/Xnyaea7rKPM3Y
 kZbiqo11xvbjnnDTVqiLydNyRmK79G4J62sSsoH6SPt53k13RE/k5s0XNDFJn7viDyOH6Jie8LXfv
 ydIiYHPBeeAQjQm1mkiKu5JpyHHkfwt2N2+ktmnyPfdOtrx+FdXvJQ4RL6pmuNqha1fE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bZzrOy8ZbeOM++f5M4PgA30tjCRKxDzayqbHVKJOgsY=; b=FZkc+Pkt9cmSSB7kk3Mh+mKkSk
 Ce0Vcgg5qtPSD4VqSAUooiuam/JuRseqgCx1MFiP5WQSBWl9I5TEnvK1h+sN8Q9OXH9zL9wWVj5BK
 cOSnUevn42bRxmbZW/wKr1YulcLQDpXoO0CvwKwqbwZuMAvkml8j4FiJDX2DSKnrEuKU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjTBf-00FoaI-2g
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jun 2020 19:48:32 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9A89C1286690A;
 Thu, 11 Jun 2020 12:48:24 -0700 (PDT)
Date: Thu, 11 Jun 2020 12:48:23 -0700 (PDT)
Message-Id: <20200611.124823.1088254975354242598.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200611100735.24184-1-tuong.t.lien@dektech.com.au>
References: <20200611100735.24184-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 11 Jun 2020 12:48:24 -0700 (PDT)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjTBf-00FoaI-2g
Subject: Re: [tipc-discussion] [net] tipc: fix kernel WARNING in
 tipc_msg_append()
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
Date: Thu, 11 Jun 2020 17:07:35 +0700

> syzbot found the following issue:
> 
> WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 check_copy_size include/linux/thread_info.h:150 [inline]
> WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 copy_from_iter include/linux/uio.h:144 [inline]
> WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 tipc_msg_append+0x49a/0x5e0 net/tipc/msg.c:242
> Kernel panic - not syncing: panic_on_warn set ...
> 
> This happens after commit 5e9eeccc58f3 ("tipc: fix NULL pointer
> dereference in streaming") that tried to build at least one buffer even
> when the message data length is zero... However, it now exposes another
> bug that the 'mss' can be zero and the 'cpy' will be negative, thus the
> above kernel WARNING will appear!
> The zero value of 'mss' is never expected because it means Nagle is not
> enabled for the socket (actually the socket type was 'SOCK_SEQPACKET'),
> so the function 'tipc_msg_append()' must not be called at all. But that
> was in this particular case since the message data length was zero, and
> the 'send <= maxnagle' check became true.
> 
> We resolve the issue by explicitly checking if Nagle is enabled for the
> socket, i.e. 'maxnagle != 0' before calling the 'tipc_msg_append()'. We
> also reinforce the function to against such a negative values if any.
> 
> Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied and queued up for v5.5+ -stable.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
