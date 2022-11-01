Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5174D614325
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Nov 2022 03:21:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1opgu6-0006T4-EU;
	Tue, 01 Nov 2022 02:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1opgu4-0006Sy-5D
 for tipc-discussion@lists.sourceforge.net;
 Tue, 01 Nov 2022 02:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9nzZpou9nbIrKUSy709rfhGA3WdbL4kkGKzuRffose0=; b=NHN0cX/feLaNfzr2oRt/0HWKU2
 vUKSX2V3PYW+uhc2sw/8uvRmiLNWowrAr1YicDvp3o97VSo6trwq08Sfjmb8GEx7+BiKoeuEKku2I
 rfvCknFecJSYNbb0W6gno3nvlDHCwGbspiCyBN8ZQESVr6qjFXa9gNmWcOxMxxoYQVo0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9nzZpou9nbIrKUSy709rfhGA3WdbL4kkGKzuRffose0=; b=VlTdc5Uz9ebI621s4RTC4I8y0b
 BvWd/OSfEBjIbMNWqesB2PXioA12BdtgFknsgkcPTrtF+ky+zm0i7vjNLnb04ByyZ89KAFa5K7mwx
 LUfWmoJaf5Zfj85e4+R4zXvkSikgnm1qPHVxjDUnlykSsG4hP9c1VaR9u74AMLagUTE0=;
Received: from mail-oa1-f41.google.com ([209.85.160.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1opgu2-0005b9-An for tipc-discussion@lists.sourceforge.net;
 Tue, 01 Nov 2022 02:21:24 +0000
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-13ba9a4430cso15450550fac.11
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 31 Oct 2022 19:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9nzZpou9nbIrKUSy709rfhGA3WdbL4kkGKzuRffose0=;
 b=QTT8+1pMYVDtrcBUwKd9uoilHn1ltZwoazoNAsUvozNUxoxYnXFZmnSnZ0VM5Sf+K3
 OmYs4+AOSGMZezoYi//absvNDTu64cil8vK7VAPTtIeZGdYdM2q8joRnydFQRf5bneNm
 52nodAncSAlb08xF3fjG4mvDl7WRoon4amp9kTqol4cnApiYFwZsU5ytEDJGH/D681sW
 AvJZPMG7NgPIAWXiS6tByjoTbBaSoNbWdUR+b0UVYLrj0eTNY393uST1/WWtDve5OLg7
 24SBULmG/fy8496TYT6m3Le0ZvhkAgrJc22IHLACtO6xm9kYzBLiwBjY3mmmddmHuIMk
 FuFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9nzZpou9nbIrKUSy709rfhGA3WdbL4kkGKzuRffose0=;
 b=MWUlm3DPR/lj0BouOeN2QjrqXSAeaWZLP05s2S2Id7KF36cynkBr4iEwJwA+E4Z8dF
 pKz4Oo1JLMkGHrosYWKx22kk6m81GrDACYgRwm2Y6b3WhH3Fzf0zOZymuukZPPrk71vt
 OLBr6g/fCSfV++o/SMILEaNDlex1+SpdOPjPyoqRg6Zc9NhXuSBGsX2dUqyZhQupNns8
 Kqqr7h4GC+2pwRs9uHqClwtRu3ImHwQeBNei82DBJn5HzuwBJwjNEZm3eBCNwrqtp6IR
 yFF62JpSVr8Zm/6CjV3YwOBOJfp0eJT7ceZsPYujfgtcWuvk/gFqCOpV3CHjdQ+y+oGF
 Naag==
X-Gm-Message-State: ACrzQf0FTTvuGu8geztZhBM1vSVBCfqyHQ1hX5XGfehup+IO7B8W4iDr
 V9vt4g0xJ2LL5PEFu6jChcDInRWn9+Q90FZe39I=
X-Google-Smtp-Source: AMsMyM6WnBg540Hfmbri+EkeavZMXeyHbQQPNx+0XI8zQ9WEC16y02jdNF1sEZPdw+j8PDAmsWqvxQaprg1T3O5vDnk=
X-Received: by 2002:a05:6870:9614:b0:11d:3906:18fc with SMTP id
 d20-20020a056870961400b0011d390618fcmr19367674oaq.190.1667269276561; Mon, 31
 Oct 2022 19:21:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAO4mrfcW2NzeigGk26DbuZBs_br86krAMW5Xos_=BuAUBr5OAg@mail.gmail.com>
In-Reply-To: <CAO4mrfcW2NzeigGk26DbuZBs_br86krAMW5Xos_=BuAUBr5OAg@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 31 Oct 2022 22:20:53 -0400
Message-ID: <CADvbK_c8uMouPVx=BqHQ6D4QvL=9H26FNH_nHk89aK-KHFLgMg@mail.gmail.com>
To: Wei Chen <harperchen1110@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Oct 30,
 2022 at 6:20 AM Wei Chen wrote: > > Dear Linux
 Developer, > > Recently when using our tool to fuzz kernel, the following
 crash was triggered: > > HEAD commit: 64570fbc14f8 Linux 5.15 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.41 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1opgu2-0005b9-An
Subject: Re: [tipc-discussion] BUG: unable to handle kernel NULL pointer
 dereference in tipc_conn_close
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

On Sun, Oct 30, 2022 at 6:20 AM Wei Chen <harperchen1110@gmail.com> wrote:
>
> Dear Linux Developer,
>
> Recently when using our tool to fuzz kernel, the following crash was triggered:
>
> HEAD commit: 64570fbc14f8 Linux 5.15-rc5
> git tree: upstream
> compiler: gcc 8.0.1
> console output:
> https://drive.google.com/file/d/1nDvjcSyhzWncMlR35k1P1dC8rswJ_Zin/view?usp=share_link
> kernel config: https://drive.google.com/file/d/1uDOeEYgJDcLiSOrx9W8v2bqZ6uOA_55t/view?usp=share_link
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: Wei Chen <harperchen1110@gmail.com>
>
> BUG: kernel NULL pointer dereference, address: 0000000000000018
> #PF: supervisor read access in kernel mode
> #PF: error_code(0x0000) - not-present page
> PGD 0 P4D 0
> Oops: 0000 [#1] PREEMPT SMP
> CPU: 1 PID: 7336 Comm: kworker/u4:4 Not tainted 5.15.0-rc5 #1
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> rel-1.13.0-48-gd9c812dda519-prebuilt.qemu.org 04/01/2014
> Workqueue: netns cleanup_net
> RIP: 0010:tipc_conn_close+0x12/0x100
con->sock is set only after tipc_topsrv_accept() is called by awork.
We should do the check under a proper lock.

Will think about it, thanks.

> Code: 02 01 e8 52 74 20 00 e9 c6 fd ff ff 66 90 66 2e 0f 1f 84 00 00
> 00 00 00 41 55 41 54 55 53 48 89 fb e8 82 4f c2 fc 48 8b 43 08 <4c> 8b
> 68 18 4d 8d a5 b0 03 00 00 4c 89 e7 e8 fb 36 44 00 f0 48 0f
> RSP: 0018:ffffc90005137d60 EFLAGS: 00010246
> RAX: 0000000000000000 RBX: ffff88805a9eea00 RCX: ffff88810b035280
> RDX: 0000000000000000 RSI: ffff88810b035280 RDI: 0000000000000002
> RBP: ffffc90005137db0 R08: ffffffff847b23de R09: 0000000000000001
> R10: 0000000000000005 R11: 0000000000000000 R12: ffff88810bdeed40
> R13: 000000000000027b R14: ffff88805a9eea00 R15: ffff88810ebc2058
> FS:  0000000000000000(0000) GS:ffff88813dc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000018 CR3: 000000010b0e2000 CR4: 00000000003506e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  tipc_topsrv_exit_net+0x139/0x320
>  ops_exit_list.isra.9+0x49/0x80
>  cleanup_net+0x31a/0x540
>  process_one_work+0x3fa/0x9f0
>  worker_thread+0x42/0x5c0
>  kthread+0x1a6/0x1e0
>  ret_from_fork+0x1f/0x30
> Modules linked in:
> CR2: 0000000000000018
> ---[ end trace 1524bb8c4ed3c3b4 ]---
> RIP: 0010:tipc_conn_close+0x12/0x100
> Code: 02 01 e8 52 74 20 00 e9 c6 fd ff ff 66 90 66 2e 0f 1f 84 00 00
> 00 00 00 41 55 41 54 55 53 48 89 fb e8 82 4f c2 fc 48 8b 43 08 <4c> 8b
> 68 18 4d 8d a5 b0 03 00 00 4c 89 e7 e8 fb 36 44 00 f0 48 0f
> RSP: 0018:ffffc90005137d60 EFLAGS: 00010246
> RAX: 0000000000000000 RBX: ffff88805a9eea00 RCX: ffff88810b035280
> RDX: 0000000000000000 RSI: ffff88810b035280 RDI: 0000000000000002
> RBP: ffffc90005137db0 R08: ffffffff847b23de R09: 0000000000000001
> R10: 0000000000000005 R11: 0000000000000000 R12: ffff88810bdeed40
> R13: 000000000000027b R14: ffff88805a9eea00 R15: ffff88810ebc2058
> FS:  0000000000000000(0000) GS:ffff88813dc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000018 CR3: 000000010b0e2000 CR4: 00000000003506e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> ----------------
> Code disassembly (best guess):
>    0: 02 01                add    (%rcx),%al
>    2: e8 52 74 20 00        callq  0x207459
>    7: e9 c6 fd ff ff        jmpq   0xfffffdd2
>    c: 66 90                xchg   %ax,%ax
>    e: 66 2e 0f 1f 84 00 00 nopw   %cs:0x0(%rax,%rax,1)
>   15: 00 00 00
>   18: 41 55                push   %r13
>   1a: 41 54                push   %r12
>   1c: 55                    push   %rbp
>   1d: 53                    push   %rbx
>   1e: 48 89 fb              mov    %rdi,%rbx
>   21: e8 82 4f c2 fc        callq  0xfcc24fa8
>   26: 48 8b 43 08          mov    0x8(%rbx),%rax
> * 2a: 4c 8b 68 18          mov    0x18(%rax),%r13 <-- trapping instruction
>   2e: 4d 8d a5 b0 03 00 00 lea    0x3b0(%r13),%r12
>   35: 4c 89 e7              mov    %r12,%rdi
>   38: e8 fb 36 44 00        callq  0x443738
>   3d: f0                    lock
>   3e: 48                    rex.W
>   3f: 0f                    .byte 0xf
>
> Best,
> Wei


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
