Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E57603349
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Oct 2022 21:20:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1oks8C-0001yH-Bn;
	Tue, 18 Oct 2022 19:20:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1oks8B-0001yB-8r
 for tipc-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 19:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BUDZV+anbDpvXzCf37543h9sYjwTmnDTYhyA4NXTpv4=; b=IZbXhOsLkICz7xhXbf7tmAvV1U
 UTTTLJQs5hyrDPwMeffDFNBw+Wqguxizz5knUn1eNAzW19NLm4bAHtqdN6TqlQwyHoWeoJEaAYcsp
 LsaMY9ZaQfosYi8vbhhDSRwe3cT/OdeEryrqcj6IY+J8vdoZJaZNFvSdvmhc2kK0/9E0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BUDZV+anbDpvXzCf37543h9sYjwTmnDTYhyA4NXTpv4=; b=F
 QuJW7hYgVQF5OUBeMEKT64dZhZdY9TC7UKyn+9dLtZkAvU4HV7mBe1YBe08rIhqihxpRnhwMCxJwp
 ax88WPI/cfuQYcwBaZvJ2Oru2Egmiy0r7lsEsplKl0bS4KVgqICaFJc+zrkFkZZ1lX8Fq76Xn2pmV
 3vVT8+M2EdMj/LjM=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oks86-008ld9-2b for tipc-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 19:20:03 +0000
Received: by mail-qk1-f178.google.com with SMTP id o22so9322771qkl.8
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 18 Oct 2022 12:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=BUDZV+anbDpvXzCf37543h9sYjwTmnDTYhyA4NXTpv4=;
 b=cROKZnZI0L2SGarRuzleR7wKNlEGoxIAxlJL7kO7iODX/scdBa5UitMRyLR/5GfVAa
 8SCl2vGfEYUzO+ScICZATNAqh2B9YFOgd2lq5710EQGTfr6YlVAAnmKKStEqIVNBrVvN
 jtRSke7a7emicPRv5CVkfefLpYJlqXYm0qQw0/7vKEXcCh4eysKj4v+GUG7sEp7uo8/g
 JvhjHzFYfp+1ym+0H2OtFV8uIRonRiQ3YOxZH5cgxIOVXjkpmb1kTD2UBcXKFzOvDAYT
 PcYidvsG3dVQcWJVPdbFfZ2koOn8iT+FCetgg7lGhBXX5ZHFbzNsqGavfhfbU1KUcJLc
 Li2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BUDZV+anbDpvXzCf37543h9sYjwTmnDTYhyA4NXTpv4=;
 b=oDXelsxXG/Ng7M4HUP9BNEJmJKBs+NFam7zalUNZeoMhlUv4zx5qGdZ/p06hanbEtu
 EyeayT+ayajj/4G1WadTqzRUv/dlFrFvR8PGKKsVsM/lVO/D+WsisKep1dX/8y7pviV2
 yzR0hwhHupPT2C3lJeJhKypxRGyoDaXO7h8htlMeegkZL3kEivoNNNJ37qBzhH+EwyQD
 e4oCqtzXk1XEOzMyL4r9EO7h+CEU2gSyDzKk8rMOCaQlGTx1Jt8g8hyEIjFLkczGCmKU
 KZkGWFGe/PPG1txHNr7OM6Go1afJq6dP184HJs9MsyBfDGlHtAxluT4xRbza3fssbgDs
 4xsg==
X-Gm-Message-State: ACrzQf2aLFaKACTZ9BQu/078CRfmJlSNA/gGzqWssrMO4moMqdf+J4Se
 BmNOvkPywssrYhyE6XAF8BM=
X-Google-Smtp-Source: AMsMyM7P04yVON6r2O2ji1jfQvClcBNM7bdJkGeaIPXjbA6XuOPfltyFX3p8Ky0MxYlv9F+cMKRGbg==
X-Received: by 2002:a05:620a:150b:b0:6ee:8d04:f70 with SMTP id
 i11-20020a05620a150b00b006ee8d040f70mr3020274qkk.101.1666120792238; 
 Tue, 18 Oct 2022 12:19:52 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 c25-20020ac81119000000b003996aa171b9sm2385074qtj.97.2022.10.18.12.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Oct 2022 12:19:51 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue, 18 Oct 2022 15:19:50 -0400
Message-Id: <4eee264380c409c61c6451af1059b7fb271a7e7b.1666120790.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot found a crash in tipc_topsrv_accept: KASAN:
 null-ptr-deref
 in range [0x0000000000000008-0x000000000000000f] Workqueue: tipc_rcv
 tipc_topsrv_accept
 RIP: 0010:kernel_accept+0x22d/0x350 net/socket.c:3487 Call Trace: <TASK>
 tipc_topsrv_acce [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.178 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oks86-008ld9-2b
Subject: [tipc-discussion] [PATCH net] tipc: fix a null-ptr-deref in
 tipc_topsrv_accept
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found a crash in tipc_topsrv_accept:

  KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
  Workqueue: tipc_rcv tipc_topsrv_accept
  RIP: 0010:kernel_accept+0x22d/0x350 net/socket.c:3487
  Call Trace:
   <TASK>
   tipc_topsrv_accept+0x197/0x280 net/tipc/topsrv.c:460
   process_one_work+0x991/0x1610 kernel/workqueue.c:2289
   worker_thread+0x665/0x1080 kernel/workqueue.c:2436
   kthread+0x2e4/0x3a0 kernel/kthread.c:376
   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

It was caused by srv->listener that might be set to null by
tipc_topsrv_stop() in net .exit whereas it's still used in
tipc_topsrv_accept() worker.

srv->listener is protected by srv->idr_lock in tipc_topsrv_stop(), so add
a check for srv->listener under srv->idr_lock in tipc_topsrv_accept() to
avoid the null-ptr-deref. To ensure the lsock is not released during the
tipc_topsrv_accept(), move sock_release() after tipc_topsrv_work_stop()
where it's waiting until the tipc_topsrv_accept worker to be done.

Note that sk_callback_lock is used to protect sk->sk_user_data instead of
srv->listener, and it should check srv in tipc_topsrv_listener_data_ready()
instead. This also ensures that no more tipc_topsrv_accept worker will be
started after tipc_conn_close() is called in tipc_topsrv_stop() where it
sets sk->sk_user_data to null.

Fixes: 0ef897be12b8 ("tipc: separate topology server listener socket from subcsriber sockets")
Reported-by: syzbot+c5ce866a8d30f4be0651@syzkaller.appspotmail.com
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/topsrv.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index 14fd05fd6107..d92ec92f0b71 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -450,12 +450,19 @@ static void tipc_conn_data_ready(struct sock *sk)
 static void tipc_topsrv_accept(struct work_struct *work)
 {
 	struct tipc_topsrv *srv = container_of(work, struct tipc_topsrv, awork);
-	struct socket *lsock = srv->listener;
-	struct socket *newsock;
+	struct socket *newsock, *lsock;
 	struct tipc_conn *con;
 	struct sock *newsk;
 	int ret;
 
+	spin_lock_bh(&srv->idr_lock);
+	if (!srv->listener) {
+		spin_unlock_bh(&srv->idr_lock);
+		return;
+	}
+	lsock = srv->listener;
+	spin_unlock_bh(&srv->idr_lock);
+
 	while (1) {
 		ret = kernel_accept(lsock, &newsock, O_NONBLOCK);
 		if (ret < 0)
@@ -489,7 +496,7 @@ static void tipc_topsrv_listener_data_ready(struct sock *sk)
 
 	read_lock_bh(&sk->sk_callback_lock);
 	srv = sk->sk_user_data;
-	if (srv->listener)
+	if (srv)
 		queue_work(srv->rcv_wq, &srv->awork);
 	read_unlock_bh(&sk->sk_callback_lock);
 }
@@ -699,8 +706,9 @@ static void tipc_topsrv_stop(struct net *net)
 	__module_get(lsock->sk->sk_prot_creator->owner);
 	srv->listener = NULL;
 	spin_unlock_bh(&srv->idr_lock);
-	sock_release(lsock);
+
 	tipc_topsrv_work_stop(srv);
+	sock_release(lsock);
 	idr_destroy(&srv->conn_idr);
 	kfree(srv);
 }
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
