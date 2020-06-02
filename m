Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B4F1EBD4A
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 15:44:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jg7Dj-0000l4-Fs; Tue, 02 Jun 2020 13:44:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jg7Di-0000kw-0e
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 13:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NycEPdXUpFNlRoA9ZwpoSv1m2PkjKmKsG+pZHBd4cPA=; b=T0cuWEVNSozf4DMuXUiWuYtFWr
 M5xCVB2FNPediky3md87Drq1w7xHjjaeMT7PYw8o6JV5Yw5N0gEhTTIumRfWudX6BlD6J2QxqDg+J
 ohuwCJteIJ3zBln69KVReqBgVIF0cYaODzEg4RIXtfBh2wD+kVovSxq5UbaDCZOQjXQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NycEPdXUpFNlRoA9ZwpoSv1m2PkjKmKsG+pZHBd4cPA=; b=GKv94c527QCxRGGNKsEW4M0RsQ
 s18RwkzPcr6OBkI8jFlugQbZ0DHeJX9q2eeSA/v/VL9Bb/XjHXWahYn7sh8+swx2IoYEVmEGJiqp+
 7WHNy7IahGet3Ftqi7rqtFrXQbYwqgJjEWc6qPJwTAskrlmxHTOssb9B+NFpyeF3Ibfk=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jg7Dg-002h6J-4w
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 13:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591105478;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NycEPdXUpFNlRoA9ZwpoSv1m2PkjKmKsG+pZHBd4cPA=;
 b=ADYE2SCsIYHxC80vA9BlpEqPI6NIuR9w92N4r+KyCfphyYnHRV3WImBtzkJ/kGqspVVJ98
 RsOBxqhB9NVTBsGWP9EU4DZ3cqhUQ3Bb5dYkLE/m1lrnRYpTAf7u5OlyUez0VN80p4rfCS
 QwQnlIfTN0wuH6SF/NZJvVK3C5lwR5w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-bAUgxBhjMG-kCxwONZvqOg-1; Tue, 02 Jun 2020 09:44:34 -0400
X-MC-Unique: bAUgxBhjMG-kCxwONZvqOg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AA46835B41;
 Tue,  2 Jun 2020 13:44:32 +0000 (UTC)
Received: from [10.10.117.121] (ovpn-117-121.rdu2.redhat.com [10.10.117.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BBC4CD0206;
 Tue,  2 Jun 2020 13:44:31 +0000 (UTC)
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200528113506.30384-1-tuong.t.lien@dektech.com.au>
 <AM6PR0502MB3925B7FD244AB41F6ADF9637E28B0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <6e4ae9d0-a2b1-a7c0-2931-158ed971e6b7@redhat.com>
Date: Tue, 2 Jun 2020 09:44:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <AM6PR0502MB3925B7FD244AB41F6ADF9637E28B0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jg7Dg-002h6J-4w
Subject: Re: [tipc-discussion] [RFC PATCH] tipc: fix general protection
 fault in sendstream()
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
Cc: tipc-dek <tipc-dek@dektech.com.au>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Yes, it looks ok.
I was a little worried that 'rem' might become negative because of the 
subtraction of 'cpy', but it looks safe.
Acked-by:
Jon Maloy <jmaloy@redhat.com>

On 6/1/20 10:19 PM, Tuong Tong Lien wrote:
> Hi Jon, all,
>
> Would you please look at this patch and give me your 'Acked-by' before I post it?
> I can see the patch from YueHaibing ("tipc: Fix NULL pointer dereference in __tipc_sendstream()") was applied, but this patch is needed nonetheless since it will also cover the other case as mentioned below.
>
> BR/Tuong
>
> -----Original Message-----
> From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
> Sent: Thursday, May 28, 2020 6:35 PM
> To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Cc: tipc-dek <tipc-dek@dektech.com.au>
> Subject: [RFC PATCH] tipc: fix general protection fault in sendstream()
>
> syzbot found the following crash:
>
> general protection fault, probably for non-canonical address 0xdffffc0000000019: 0000 [#1] PREEMPT SMP KASAN
> KASAN: null-ptr-deref in range [0x00000000000000c8-0x00000000000000cf]
> CPU: 1 PID: 7060 Comm: syz-executor394 Not tainted 5.7.0-rc6-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:__tipc_sendstream+0xbde/0x11f0 net/tipc/socket.c:1591
> Code: 00 00 00 00 48 39 5c 24 28 48 0f 44 d8 e8 fa 3e db f9 48 b8 00 00 00 00 00 fc ff df 48 8d bb c8 00 00 00 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 e2 04 00 00 48 8b 9b c8 00 00 00 48 b8 00 00 00
> RSP: 0018:ffffc90003ef7818 EFLAGS: 00010202
> RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffff8797fd9d
> RDX: 0000000000000019 RSI: ffffffff8797fde6 RDI: 00000000000000c8
> RBP: ffff888099848040 R08: ffff88809a5f6440 R09: fffffbfff1860b4c
> R10: ffffffff8c305a5f R11: fffffbfff1860b4b R12: ffff88809984857e
> R13: 0000000000000000 R14: ffff888086aa4000 R15: 0000000000000000
> FS:  00000000009b4880(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000020000140 CR3: 00000000a7fdf000 CR4: 00000000001406e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>   tipc_sendstream+0x4c/0x70 net/tipc/socket.c:1533
>   sock_sendmsg_nosec net/socket.c:652 [inline]
>   sock_sendmsg+0xcf/0x120 net/socket.c:672
>   ____sys_sendmsg+0x32f/0x810 net/socket.c:2352
>   ___sys_sendmsg+0x100/0x170 net/socket.c:2406
>   __sys_sendmmsg+0x195/0x480 net/socket.c:2496
>   __do_sys_sendmmsg net/socket.c:2525 [inline]
>   __se_sys_sendmmsg net/socket.c:2522 [inline]
>   __x64_sys_sendmmsg+0x99/0x100 net/socket.c:2522
>   do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
>   entry_SYSCALL_64_after_hwframe+0x49/0xb3
> RIP: 0033:0x440199
> ...
>
> This bug was bisected to commit 0a3e060f340d ("tipc: add test for Nagle
> algorithm effectiveness"). However, it is not the case, the trouble was
> in base that we can make an empty 'txq' queue after the
> 'tipc_msg_append()' in Nagle mode, especially in the case, syzbot tried
> to send messages of zero data length!
>
> The same crash can be reproduced even without the patch but at the link
> layer when it accesses the empty queue.
>
> The commit solves the issue by building at least one skb to go with the
> socket header and optional data section that may be empty like what we
> had with the 'tipc_msg_build()'.
>
> Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/msg.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 23809039dda1..604c03adabc2 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -221,7 +221,7 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>   	accounted = skb ? msg_blocks(buf_msg(skb)) : 0;
>   	total = accounted;
>   
> -	while (rem) {
> +	do {
>   		if (!skb || skb->len >= mss) {
>   			prev = skb;
>   			skb = tipc_buf_acquire(mss, GFP_KERNEL);
> @@ -246,7 +246,7 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>   		skb_put(skb, cpy);
>   		rem -= cpy;
>   		total += msg_blocks(hdr) - curr;
> -	}
> +	} while (rem);
>   	return total - accounted;
>   }
>   



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
