Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 758932D3FCB
	for <lists+tipc-discussion@lfdr.de>; Wed,  9 Dec 2020 11:22:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmwbj-0001lW-6i; Wed, 09 Dec 2020 10:22:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmwbi-0001lL-0X
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Dec 2020 10:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:Cc:To:References:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=URa/3PlYxWy25Vd/lUogqfhfBOFjRRAnYTJdU0QleyQ=; b=G+KEPKTJPFq85n1YGjsPygpuq
 nsYWcV98vKa5bmfB8mJpxVeyYZMUyUVjWLxgc0ANxkB2X0J1YPA4fMG4W2gwmusUgwgHeK69dfMjw
 UQRP/dySvZpJTffHb3EFfcbvIJNCEmAFep5AncyQbIJrsvSNU5kgbjREfyqm8Rn9J+5ZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:To:
 References:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=URa/3PlYxWy25Vd/lUogqfhfBOFjRRAnYTJdU0QleyQ=; b=ZLI9EHqXiB2MC1Cq9D0PFHrx2W
 oTtKQZZVeIPJmp30dEf1SozwOLBZSTe5lNC2QCGpEMwmGHqH9qSsiqH5YNxu7coKU7xwkJg+WXX/7
 0ejuH1gPyBRsgcFPX/wKSzrlMgYbMIVr6LR8YMKsgyxWezk8LCIEKUsavyu0f/KD9Vn0=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmwbe-004ndq-Et
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Dec 2020 10:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607509305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=URa/3PlYxWy25Vd/lUogqfhfBOFjRRAnYTJdU0QleyQ=;
 b=R7IndC3Ah/uXQTnZMRwMApIWdpRiCHb9K5m/XEdqRcHxr+GIPLuQQ+c1QLUc5T3bsN7E8a
 I5mhdwhWRi2dKd8hcYBe+/JvaXFarcIFZsxHuw/rzhcJwBedwgC2b2c7S9SNEbLIzHXUmp
 uDVc6v9x6jW/yJ1OSea9mbvKwu79Otg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-BB8QhwZKOI6oWu9GyloA-g-1; Wed, 09 Dec 2020 05:21:39 -0500
X-MC-Unique: BB8QhwZKOI6oWu9GyloA-g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9E1A858181;
 Wed,  9 Dec 2020 10:21:37 +0000 (UTC)
Received: from [10.10.116.129] (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E8A555C234;
 Wed,  9 Dec 2020 10:21:36 +0000 (UTC)
References: <CACT4Y+bhEC6aHBs-2qa76kGaCQ4=0v7Hi_bXwu_5air5seBLpQ@mail.gmail.com>
To: Hoang Le <hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
X-Forwarded-Message-Id: <CACT4Y+bhEC6aHBs-2qa76kGaCQ4=0v7Hi_bXwu_5air5seBLpQ@mail.gmail.com>
Message-ID: <3f53ff8c-16a7-3fe4-1e3b-d6afbb6a9de7@redhat.com>
Date: Wed, 9 Dec 2020 05:21:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CACT4Y+bhEC6aHBs-2qa76kGaCQ4=0v7Hi_bXwu_5air5seBLpQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmwbe-004ndq-Et
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Fwd: BUG: rwlock bad magic on CPU,
 kworker/0:LINE/NUM, ADDR
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Hoang,
This was the one I had in mind. To me it looks like we still have a problem.

///jon


-------- Forwarded Message --------
Subject: 	Re: BUG: rwlock bad magic on CPU, kworker/0:LINE/NUM, ADDR
Date: 	Mon, 30 Nov 2020 12:35:30 +0100
From: 	Dmitry Vyukov <dvyukov@google.com>
To: 	syzbot <syzbot+cb987a9c796abc570b47@syzkaller.appspotmail.com>
CC: 	David Miller <davem@davemloft.net>, jmaloy@redhat.com, Jakub 
Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, netdev 
<netdev@vger.kernel.org>, syzkaller-bugs 
<syzkaller-bugs@googlegroups.com>, 
tipc-discussion@lists.sourceforge.net, Ying Xue <ying.xue@windriver.com>



On Mon, Nov 30, 2020 at 12:33 PM syzbot
<syzbot+cb987a9c796abc570b47@syzkaller.appspotmail.com> wrote:
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    90cf87d1 enetc: Let the hardware auto-advance the taprio b..
> git tree:       net
> console output: https://syzkaller.appspot.com/x/log.txt?x=135479b3500000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=5720c06118e6c4cc
> dashboard link: https://syzkaller.appspot.com/bug?extid=cb987a9c796abc570b47
> compiler:       gcc (GCC) 10.1.0-syz 20200507
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+cb987a9c796abc570b47@syzkaller.appspotmail.com
>
> tipc: 32-bit node address hash set to aa1414ac
> BUG: rwlock bad magic on CPU#0, kworker/0:18/18158, 00000000859f2a8d
> CPU: 0 PID: 18158 Comm: kworker/0:18 Not tainted 5.10.0-rc4-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x107/0x163 lib/dump_stack.c:118
>   rwlock_bug kernel/locking/spinlock_debug.c:144 [inline]
>   debug_write_lock_before kernel/locking/spinlock_debug.c:182 [inline]
>   do_raw_write_lock+0x1ef/0x280 kernel/locking/spinlock_debug.c:206
>   tipc_mon_reinit_self+0x1f7/0x630 net/tipc/monitor.c:685

There was also "general protection fault in tipc_mon_reinit_self":
https://syzkaller.appspot.com/bug?id=dc141b9a05cb48d3d9b46837bc2fdc9e7d95dbe9
which also happened once. Smells like an intricate race condition.


>   tipc_net_finalize net/tipc/net.c:134 [inline]
>   tipc_net_finalize+0x1df/0x310 net/tipc/net.c:125
>   process_one_work+0x933/0x15a0 kernel/workqueue.c:2272
>   worker_thread+0x64c/0x1120 kernel/workqueue.c:2418
>   kthread+0x3af/0x4a0 kernel/kthread.c:292
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/0000000000004e5bdb05b5516009%40google.com.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
