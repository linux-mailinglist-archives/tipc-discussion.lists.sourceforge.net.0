Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75487619EED
	for <lists+tipc-discussion@lfdr.de>; Fri,  4 Nov 2022 18:38:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1or0dn-0001lF-IK;
	Fri, 04 Nov 2022 17:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1or0dm-0001l0-4k
 for tipc-discussion@lists.sourceforge.net;
 Fri, 04 Nov 2022 17:38:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CESi/QuyB0+7uMM9ST1dSB2NDWs95NPRxZRMfmdUQF8=; b=Q9rKFtNQ1G6rSsEziPuE3bI6El
 S1QaLkxH9+mY38/Qo3Pq4vzw7lEr6X+a2oYafSyu1vEcN2dIGKKysqDEk3mJCFUKk+DZjMh8Lw6VV
 zH3U1QxH4vO7PadCHwt2jkDuPYsZdFDT8W1UF0glwlsAESgBIvkbUXe24qUdINhbCfu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CESi/QuyB0+7uMM9ST1dSB2NDWs95NPRxZRMfmdUQF8=; b=KQLbGYU6C/fpDZVEiSktGo4MAB
 1Jv6vVIVtRc+n0riL0BdKJ3xE+Slidb6hx8KvFTyCh5oXWbmuRLIV2hMzkEoKJ0jCENlAy0T9fn0W
 myD1TLdir0b5ObuYaiExm1O327xCY26zUIV4h5rHC9Q5U+BFMqPD3pX0tgIqrrcyWlHU=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1or0di-00Bwnj-80 for tipc-discussion@lists.sourceforge.net;
 Fri, 04 Nov 2022 17:38:02 +0000
Received: by mail-oi1-f174.google.com with SMTP id r76so5846896oie.13
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 04 Nov 2022 10:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CESi/QuyB0+7uMM9ST1dSB2NDWs95NPRxZRMfmdUQF8=;
 b=qRN331Q3lFC/jiJrMMlhDieuNyyRJdSkDn90USd5Zh/1i49Mp/pjlpZAy+R1iGQowD
 Ob3EIUrrYYuobp0mwpfkGBHaMqwkqWfuCoce2nhUE7ZtXDDR6VI1MLkXzAoBMhliVmbW
 IZC47hdI39uFTmHxH+ahF2ALi9SiLzQRiXln4qyU4wtWE1e34IiqEGnRo5kyWYTAKzQ2
 dXoX3yP2qzoTWQ/d86DHNjixR/9GucrW7/09u1snJVHFjbmMjG+cfx6KRcn+FMw2e+qF
 AmsVne9WuzTPi64gVQ4PvbDHY/D427XPdsFC+x8UDH1y4uDA9JfuW1ZCUEJgKHOCyFmS
 kj8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CESi/QuyB0+7uMM9ST1dSB2NDWs95NPRxZRMfmdUQF8=;
 b=kTqx9vK6918U5nE8OFPckyEc3S7TWBKZaEy6FGHoxjcFFsJtZ5t86zaAnMlUTZz2Ya
 d4aZ/B9zJ+ib2NCUE1Ur3oiElDXHNcz4FnhRVrIfs/yFjqiXkFaeZghgbe+Zk87zvk/j
 TTIUYz9ZblIezHP8cQwiPA4aW/DB7tDCYtJkUaYfjA6oA4I7zMjC+cdCL7V0PVqvbXIv
 z6Ti2DJ9i5UcptqKCz59olMfjoOkJiTHuKwFlX/+VeI5/OLYCfHYTdcn8Njh5ZuRRyR1
 Emi37p9wJqoLbHUpAkjyrE8KJuyu3jx5T4Mfw6WPPssfvmCElayt+tm63KgxsSTz5mF4
 En4g==
X-Gm-Message-State: ACrzQf32+N1rD13JpIhmLRU6Rafeqp3WYWraSrPoacF4t4DBMSjQIVUK
 0gDpZAyYdAhGXZsbWXzt8sSD5Z+P9/JP85w89fo=
X-Google-Smtp-Source: AMsMyM6mBqd3NbWQM9nXMToatDmrFvI2ILGgGWse+BgGpeLKISzm+yE63S85OSA+mg1eA40JhsvZiPjcKpEgCQhGVWw=
X-Received: by 2002:a05:6808:1826:b0:35a:573f:c8b5 with SMTP id
 bh38-20020a056808182600b0035a573fc8b5mr4008958oib.190.1667583472536; Fri, 04
 Nov 2022 10:37:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAO4mrfeFrYwFEYmULU0DWxG3kOq+M-=uqRJNp8b-RKy6wzvEsw@mail.gmail.com>
In-Reply-To: <CAO4mrfeFrYwFEYmULU0DWxG3kOq+M-=uqRJNp8b-RKy6wzvEsw@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Fri, 4 Nov 2022 13:37:26 -0400
Message-ID: <CADvbK_ffQx25qkwc94C_vsOjeqv_skcJ+H2Hkdtm6xVXgc4ggw@mail.gmail.com>
To: Wei Chen <harperchen1110@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Oct 30,
 2022 at 6:32 AM Wei Chen wrote: > > Dear Linux
 Developer, > > Recently when using our tool to fuzz kernel, the following
 crash was triggered: > > HEAD commit: 64570fbc14f8 Linux 5.15 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1or0di-00Bwnj-80
Subject: Re: [tipc-discussion] BUG: unable to handle kernel NULL pointer
 dereference in tipc_crypto_key_distr
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Sun, Oct 30, 2022 at 6:32 AM Wei Chen <harperchen1110@gmail.com> wrote:
>
> Dear Linux Developer,
>
> Recently when using our tool to fuzz kernel, the following crash was triggered:
>
> HEAD commit: 64570fbc14f8 Linux 5.15-rc5
> git tree: upstream
> compiler: gcc 8.0.1
> console output:
> https://drive.google.com/file/d/1ZxNXcUkiJiTK6MzVIWCqDpq70QW2-t-b/view?usp=share_link
> kernel config: https://drive.google.com/file/d/1uDOeEYgJDcLiSOrx9W8v2bqZ6uOA_55t/view?usp=share_link
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: Wei Chen <harperchen1110@gmail.com>
>
> RBP: 0000000000000045 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 000000000119bfac
> R13: 0000000000000000 R14: 000000000119bfa0 R15: 00007fffcffa6fe0
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> #PF: supervisor read access in kernel mode
> #PF: error_code(0x0000) - not-present page
> PGD 2763b067 P4D 2763b067 PUD 27636067 PMD 0
> Oops: 0000 [#1] PREEMPT SMP
> CPU: 0 PID: 12346 Comm: syz-executor.0 Not tainted 5.15.0-rc5 #1
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> rel-1.13.0-48-gd9c812dda519-prebuilt.qemu.org 04/01/2014
> RIP: 0010:tipc_crypto_key_distr+0x121/0x6a0
> Code: 00 48 8b 13 88 85 60 ff ff ff 41 0f b7 44 24 48 48 89 95 68 ff
> ff ff 66 89 85 5c ff ff ff 49 8b 44 24 40 48 89 85 50 ff ff ff <8b> 40
> 20 83 c0 24 0f b7 c0 83 c0 28 89 c7 89 85 64 ff ff ff e8 96
> RSP: 0018:ffffc9000d48f8e0 EFLAGS: 00010212
> RAX: 0000000000000000 RBX: ffff888010979a00 RCX: 0000000000040000
> RDX: ffff8880163e0000 RSI: 0000000000000a20 RDI: 0000000000000002
> RBP: ffffc9000d48f998 R08: ffffffff847c7f3d R09: 0000000000000000
> R10: 0000000000000001 R11: 0000000000000001 R12: ffff88803189eb00
> R13: 0000000000000001 R14: 0000000000000000 R15: 00000000ffffff82
> FS:  00007f54fc3f7700(0000) GS:ffff88807dc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000027638000 CR4: 00000000003526f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  tipc_nl_node_set_key+0x760/0x930
Please check if this fix is in your kernel:

commit 3e6db079751afd527bf3db32314ae938dc571916
Author: Tadeusz Struk <tadeusz.struk@linaro.org>
Date:   Mon Nov 15 08:01:43 2021 -0800

    tipc: check for null after calling kmemdup

Thanks.
>  genl_family_rcv_msg_doit.isra.16+0x141/0x190
>  genl_rcv_msg+0x172/0x2c0
>  netlink_rcv_skb+0x87/0x1d0
>  genl_rcv+0x24/0x40
>  netlink_unicast+0x2b8/0x3d0
>  netlink_sendmsg+0x350/0x680
>  sock_sendmsg+0x52/0x70
>  ____sys_sendmsg+0x35f/0x390
>  ___sys_sendmsg+0x95/0xd0
>  __sys_sendmsg+0x87/0x100
>  do_syscall_64+0x34/0xb0
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x4692c9
> Code: f7 d8 64 89 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 48 89 f8 48
> 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
> 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007f54fc3f6c38 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
> RAX: ffffffffffffffda RBX: 00007f54fc3f6c80 RCX: 00000000004692c9
> RDX: 0000000000000000 RSI: 00000000200007c0 RDI: 0000000000000003
> RBP: 0000000000000045 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 000000000119bfac
> R13: 0000000000000000 R14: 000000000119bfa0 R15: 00007fffcffa6fe0
> Modules linked in:
> CR2: 0000000000000020
> ---[ end trace c7813f5e0b2eeeab ]---
> RIP: 0010:tipc_crypto_key_distr+0x121/0x6a0
> Code: 00 48 8b 13 88 85 60 ff ff ff 41 0f b7 44 24 48 48 89 95 68 ff
> ff ff 66 89 85 5c ff ff ff 49 8b 44 24 40 48 89 85 50 ff ff ff <8b> 40
> 20 83 c0 24 0f b7 c0 83 c0 28 89 c7 89 85 64 ff ff ff e8 96
> RSP: 0018:ffffc9000d48f8e0 EFLAGS: 00010212
> RAX: 0000000000000000 RBX: ffff888010979a00 RCX: 0000000000040000
> RDX: ffff8880163e0000 RSI: 0000000000000a20 RDI: 0000000000000002
> RBP: ffffc9000d48f998 R08: ffffffff847c7f3d R09: 0000000000000000
> R10: 0000000000000001 R11: 0000000000000001 R12: ffff88803189eb00
> R13: 0000000000000001 R14: 0000000000000000 R15: 00000000ffffff82
> FS:  00007f54fc3f7700(0000) GS:ffff88807dc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000027638000 CR4: 00000000003526f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> ----------------
> Code disassembly (best guess):
>    0: 00 48 8b              add    %cl,-0x75(%rax)
>    3: 13 88 85 60 ff ff    adc    -0x9f7b(%rax),%ecx
>    9: ff 41 0f              incl   0xf(%rcx)
>    c: b7 44                mov    $0x44,%bh
>    e: 24 48                and    $0x48,%al
>   10: 48 89 95 68 ff ff ff mov    %rdx,-0x98(%rbp)
>   17: 66 89 85 5c ff ff ff mov    %ax,-0xa4(%rbp)
>   1e: 49 8b 44 24 40        mov    0x40(%r12),%rax
>   23: 48 89 85 50 ff ff ff mov    %rax,-0xb0(%rbp)
> * 2a: 8b 40 20              mov    0x20(%rax),%eax <-- trapping instruction
>   2d: 83 c0 24              add    $0x24,%eax
>   30: 0f b7 c0              movzwl %ax,%eax
>   33: 83 c0 28              add    $0x28,%eax
>   36: 89 c7                mov    %eax,%edi
>   38: 89 85 64 ff ff ff    mov    %eax,-0x9c(%rbp)
>   3e: e8                    .byte 0xe8
>   3f: 96                    xchg   %eax,%esi
>
> Best,
> We


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
