Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 960CD2C0D2E
	for <lists+tipc-discussion@lfdr.de>; Mon, 23 Nov 2020 15:25:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1khCmd-0004uq-I7; Mon, 23 Nov 2020 14:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1khCmc-0004uj-Pa
 for tipc-discussion@lists.sourceforge.net; Mon, 23 Nov 2020 14:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gPMW28uS9TcJP8fn7IZl4tG3jf16WAuxGevFo3L5JsY=; b=fQ4cyfQmioKN7KcFbH6nr5wK+2
 bvffAzK7Om4BB7kyWFDy9ptbT+kojb8atSaiOGcVAh4u96lm3098s44oTZ/frXxvKEhuNsoUmNuXw
 Ulh6Wr8dywODT6b+TCCp/q+4Qd79zML40HsKEb2zSkZ2/1QoLX5a5tlepjQoC/cwKGEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gPMW28uS9TcJP8fn7IZl4tG3jf16WAuxGevFo3L5JsY=; b=AkzirmCvuNiYjQN9piRfObaVH1
 iAW+5RdjRV+WQnm16iRn2AM5T99TvA65AgdxQJ60LpeIO4oAVpBA+VcW5VHd7Ol2SlZlGCc0EM211
 EaRIkh2A0H4QNFckv1VAVPn7Z4BZzOW617DIqpacFEU9fQRuYDt2JjB6WDUBneuzdKzU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1khCmT-000euo-3B
 for tipc-discussion@lists.sourceforge.net; Mon, 23 Nov 2020 14:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606141519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gPMW28uS9TcJP8fn7IZl4tG3jf16WAuxGevFo3L5JsY=;
 b=XIRzXN3o8LWIhino/yx6LQNedKXlQzlooXIX3OPP1rAVpBOm3yKyluT1uYblZ5um4yCO7B
 QMdtMUPxG7EIxLAGZGSKNgQv9rZQjFVq3acHzn6Z/WIjkdS4lk4ljL2tyyjxqt5MCTP3bd
 n10OXVdm0HcIqUzc5BeqKhxdvtiL5l4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-JcosIjzrMvCj4eMFxRAM7Q-1; Mon, 23 Nov 2020 09:25:17 -0500
X-MC-Unique: JcosIjzrMvCj4eMFxRAM7Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4BF6D81CBDF;
 Mon, 23 Nov 2020 14:25:15 +0000 (UTC)
Received: from [10.10.116.171] (ovpn-116-171.rdu2.redhat.com [10.10.116.171])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D06C620DE;
 Mon, 23 Nov 2020 14:25:13 +0000 (UTC)
To: Holger Brunck <holger.brunck@hitachi-powergrids.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <AS8PR06MB7269EEC3A0C96ED05DE19B29CCE00@AS8PR06MB7269.eurprd06.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <999af682-2051-8e01-d417-ad04e1f442fc@redhat.com>
Date: Mon, 23 Nov 2020 09:25:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <AS8PR06MB7269EEC3A0C96ED05DE19B29CCE00@AS8PR06MB7269.eurprd06.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1khCmT-000euo-3B
Subject: Re: [tipc-discussion] refcount warnings with TIPC in combination
 with a TAP device and fragmented messages
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
Cc: Matteo Ghidoni <matteo.ghidoni@hitachi-powergrids.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Holger,
We will look into this. It is a new setup for us, so it has to be 
prepared first.

///jon


On 11/19/20 9:33 AM, Holger Brunck wrote:
> Hi all,
> we have currently problems with TIPC in combination with a TAP interface and fragmented
> messages. We have a Kirkwood board getting TIPC ethernet packets from a third party stack
> in user space which we fill into a TAP device to pass this packets to the kernel. On the
> remote side we have another board with a physical ethernet device. After migrating to
> kernel 5.4 we saw kernel crashes as soon as we send fragmented TIPC messages via
> this link. Before the kernel crash we see "refcount_t: underflow; use-after-free"
> warnings coming either from the TIPC or the driver/net/tun.
> For smaller packets everything work fine. To track this down we wrote a small
> test program which receives raw ethernet packets in user space and send them back to
> kernel space via a TAP interface, to be able to reproduce it with a mainline kernel only.
> So instead of a link e.g. eth0:eth0 we have a link from eth0:tap0.
>
> I now tested this on latest mainline kernel and still see warnings coming from the kernel, but
> not the crash.
> So in the testcase we have TIPC server running on a remote board having a ethernet bearer
> on a interface. The ethernet interface is connected to the ethernet interface of the
> kirkwood board. The incoming messages are passed to user space and filled into the TAP device.
> So we have a TIPC link between tap0 and eth0. If I send now back and forth  TIPC connectionless
> messages to the server via the TAP device the kernel print the following messages as soon as
> the packets are larger then the MTU and TIPC need to reassemble the fragmented messages coming
> from the TAP driver:
>
> root@km_kirkwood:~#
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 94 at lib/refcount.c:28 sock_wfree+0xd8/0xe0
> refcount_t: underflow; use-after-free.
> Modules linked in:
> CPU: 0 PID: 94 Comm: tipc_ping Tainted: G        W         5.10.0-rc4-17824-g0fa8ee0d9ab9 #112
> Hardware name: Marvell Kirkwood (Flattened Device Tree)
> [<c000f924>] (unwind_backtrace) from [<c000c980>] (show_stack+0x10/0x14)
> [<c000c980>] (show_stack) from [<c001c27c>] (__warn+0xe8/0xfc)
> [<c001c27c>] (__warn) from [<c001c2fc>] (warn_slowpath_fmt+0x6c/0xb8)
> [<c001c2fc>] (warn_slowpath_fmt) from [<c0564b78>] (sock_wfree+0xd8/0xe0)
> [<c0564b78>] (sock_wfree) from [<c056b730>] (skb_release_all+0xc/0x28)
> [<c056b730>] (skb_release_all) from [<c056b784>] (kfree_skb+0x20/0x6c)
> [<c056b784>] (kfree_skb) from [<c056be44>] (skb_release_data+0xc0/0x140)
> [<c056be44>] (skb_release_data) from [<c056b784>] (kfree_skb+0x20/0x6c)
> [<c056b784>] (kfree_skb) from [<c0720ea4>] (tipc_recvmsg+0x270/0x3c4)
> [<c0720ea4>] (tipc_recvmsg) from [<c0560428>] (__sys_recvfrom+0xb0/0x128)
> [<c0560428>] (__sys_recvfrom) from [<c05604bc>] (sys_recv+0x18/0x20)
> [<c05604bc>] (sys_recv) from [<c0008240>] (ret_fast_syscall+0x0/0x50)
> Exception stack(0xc1615fa8 to 0xc1615ff0)
> 5fa0:                   00000001 00000000 00000003 00025010 0000fa00 00000000
> 5fc0: 00000001 00000000 00010888 00000123 00000000 00000000 49cb0000 be939bec
> 5fe0: 00000000 be93997c 00011114 49d9666c
> ---[ end trace e7c3a1366c544d79 ]---
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 74 at lib/refcount.c:22 sock_alloc_send_pskb+0x240/0x258
> refcount_t: saturated; leaking memory.
> Modules linked in:
> CPU: 0 PID: 74 Comm: main Tainted: G        W         5.10.0-rc4-17824-g0fa8ee0d9ab9 #112
> Hardware name: Marvell Kirkwood (Flattened Device Tree)
> [<c000f924>] (unwind_backtrace) from [<c000c980>] (show_stack+0x10/0x14)
> [<c000c980>] (show_stack) from [<c001c27c>] (__warn+0xe8/0xfc)
> [<c001c27c>] (__warn) from [<c001c2fc>] (warn_slowpath_fmt+0x6c/0xb8)
> [<c001c2fc>] (warn_slowpath_fmt) from [<c0563b40>] (sock_alloc_send_pskb+0x240/0x258)
> [<c0563b40>] (sock_alloc_send_pskb) from [<c043d500>] (tun_get_user+0x224/0x13f8)
> [<c043d500>] (tun_get_user) from [<c043e718>] (tun_chr_write_iter+0x44/0x78)
> [<c043e718>] (tun_chr_write_iter) from [<c012f1bc>] (vfs_write+0x1fc/0x448)
> [<c012f1bc>] (vfs_write) from [<c012f52c>] (ksys_write+0x54/0xcc)
> [<c012f52c>] (ksys_write) from [<c0008240>] (ret_fast_syscall+0x0/0x50)
> Exception stack(0xc158bfa8 to 0xc158bff0)
> bfa0:                   00011244 00000000 00000004 00022098 000005c2 00000004
> bfc0: 00011244 00000000 000108bc 00000004 00000000 00000000 49cb0000 becf3c94
> bfe0: 00000000 becf3bb0 49e21ce0 49e223e4
> ---[ end trace e7c3a1366c544d7a ]---
>
> Kernel version:
> root@km_kirkwood:~# cat /proc/version
> Linux version 5.10.0-rc4-17824-g0fa8ee0d9ab9
>
> If I simply use ethernet bearer on both sides everything works fine, so I need
> the TAP interface to be involved to see the problem.
>
> It seems that we have a problem in the skb_buf allocation or handling between
> the TAP driver and the TIPC layer as soon it comes to fragmentation.
> Does anyone have an idea what could cause the problem and how to track this
> down? Any help is appreciated.
>
> Best regards
> Holger Brunck



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
