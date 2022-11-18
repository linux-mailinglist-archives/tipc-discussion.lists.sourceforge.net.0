Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5306F62FF88
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Nov 2022 22:45:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ow9Aj-00054s-Hp;
	Fri, 18 Nov 2022 21:45:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ow9Ai-00054l-I7
 for tipc-discussion@lists.sourceforge.net;
 Fri, 18 Nov 2022 21:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xL2dxZZ+2wUAwiTvYsxOOu5mixYpfrSKbofQ4f5aFek=; b=QqtH8gVxW135kXXSlWxgGATXHH
 it+MVsNYZ5zmXSEt1p+sqAUkf3LpBno4n2VDsSNjHN3xfZThejXnuf9bGlWDKNOMJBPzqCVN75sHL
 jCe5aPBkS31TuCgEJFGGn9y5hzOmKEUShf+yxQARcMZ4uW975iBE095pvp10VRvhvucw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xL2dxZZ+2wUAwiTvYsxOOu5mixYpfrSKbofQ4f5aFek=; b=h0UC1MXtm/mz096lMzbDrUDHBW
 WLHclMjNx4KyKVZS4lV56eB4XiVfNhvHysUfm9FA4AhHqEEFaWY8fMfisK+s623vG5nibNmfFfSBX
 h759jh0ssqVOLPG2w7C/UFMvQLuC/zrU54r8wc136MszVwkYUGen8CAQ8/7+ToyTKOUA=;
Received: from mail-qv1-f47.google.com ([209.85.219.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ow9Ae-00CtYe-DK for tipc-discussion@lists.sourceforge.net;
 Fri, 18 Nov 2022 21:45:16 +0000
Received: by mail-qv1-f47.google.com with SMTP id h7so3644886qvs.3
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 18 Nov 2022 13:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xL2dxZZ+2wUAwiTvYsxOOu5mixYpfrSKbofQ4f5aFek=;
 b=VFRYXKMckUn5DbITT/pfr/somDp6/Lg59LAQstNGr0E1YG9OiUiqGVrmlFu8B3UaxX
 qEdmd8jcI1kDa9cq9AeNCft7QHT6XHliVhVxT43W59bpRvP6tfczDz/leLvdN/Jjxaer
 IgjnCrdpHx5if2XPc1gCsLsKZtApxI9YnQwQGceaVKWdFScapba28RqpMw2HDpTsATwA
 i0BNeP5YxfujC+ZuhFTgLpeIEHID9L2ZZteJCLyWbZSHCGBM9mbyeDaXgvF9gjNt1WqW
 YLG07bZyNuytbHhjfC1FyQcNDz3ITN8F4hgcLn1xtmsL1V3yKR/9PaLWkOpVqX9i1hOz
 rXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xL2dxZZ+2wUAwiTvYsxOOu5mixYpfrSKbofQ4f5aFek=;
 b=iEM0dqtyHNa4kMDv7btr7rZPsqbO8Dg7HRE3Z0oKpIUvyVfvLrfnFUdiq+GFVYHsKM
 rXID61ThCRBEAJGRqtk0MTvPPVHZPZ6RSW8f9C6MyIZ0fYr/I5HiaSkKeheVSWMkzN93
 oEPUBx4WUz+eyRbRdbT8CvuFs36CpnUavpniEtA6Z1TIbx2/ftf/bKobugmTlqXBkxtB
 J0RQMEkKvo1czj21ZyLjOx89T3ugdfvGrTRMXV1K9YjzzXkdzL9cqwgP4UaVz8YlE//g
 ulh8OR6UI/87ZPbl1SUlRIthjdbh/cFO4300H578QH6fThkRv+90L+hh4DSOOwt+QbwJ
 UKgQ==
X-Gm-Message-State: ANoB5pn8UjRUGPGomOpPWZe05Yxv6jRZ/d/VsBsSpQolVAGym70DLMSg
 NIsbjdT6mEj8Y7kIwjO31m8=
X-Google-Smtp-Source: AA0mqf4E6fLHxiBedVlxXqpYuDu7JsBXwWFu5rRRGBilMqwZCjs+4j/uxL0I0givKzXnZdsBp54TKw==
X-Received: by 2002:ad4:4482:0:b0:4bb:8ef1:b544 with SMTP id
 m2-20020ad44482000000b004bb8ef1b544mr8610094qvt.99.1668807906604; 
 Fri, 18 Nov 2022 13:45:06 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 bi41-20020a05620a31a900b006f956766f76sm3232917qkb.1.2022.11.18.13.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Nov 2022 13:45:06 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri, 18 Nov 2022 16:45:00 -0500
Message-Id: <bc7bd3183f1c275c820690fc65b708238fe9e38e.1668807842.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1668807842.git.lucien.xin@gmail.com>
References: <cover.1668807842.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  A crash was reported by Wei Chen: BUG: kernel NULL pointer
 dereference, address: 0000000000000018 RIP: 0010:tipc_conn_close+0x12/0x100
 Call Trace: tipc_topsrv_exit_net+0x139/0x320 ops_exit_list.isra.9+0x49/0x80
 cleanup_net+0x31a/0x54 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.47 listed in list.dnswl.org]
X-Headers-End: 1ow9Ae-00CtYe-DK
Subject: [tipc-discussion] [PATCH net 1/2] tipc: set con sock in
 tipc_conn_alloc
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
Cc: Wei Chen <harperchen1110@gmail.com>, Eric Dumazet <edumazet@google.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

A crash was reported by Wei Chen:

  BUG: kernel NULL pointer dereference, address: 0000000000000018
  RIP: 0010:tipc_conn_close+0x12/0x100
  Call Trace:
   tipc_topsrv_exit_net+0x139/0x320
   ops_exit_list.isra.9+0x49/0x80
   cleanup_net+0x31a/0x540
   process_one_work+0x3fa/0x9f0
   worker_thread+0x42/0x5c0

It was caused by !con->sock in tipc_conn_close(). In tipc_topsrv_accept(),
con is allocated in conn_idr then its sock is set:

  con = tipc_conn_alloc();
  ...                    <----[1]
  con->sock = newsock;

If tipc_conn_close() is called in anytime of [1], the null-pointer-def
is triggered by con->sock->sk due to con->sock is not yet set.

This patch fixes it by moving the con->sock setting to tipc_conn_alloc()
under s->idr_lock. So that con->sock can never be NULL when getting the
con from s->conn_idr. It will be also safer to move con->server and flag
CF_CONNECTED setting under s->idr_lock, as they should all be set before
tipc_conn_alloc() is called.

Fixes: c5fa7b3cf3cb ("tipc: introduce new TIPC server infrastructure")
Reported-by: Wei Chen <harperchen1110@gmail.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/topsrv.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index d92ec92f0b71..b0f9aa521670 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -176,7 +176,7 @@ static void tipc_conn_close(struct tipc_conn *con)
 	conn_put(con);
 }
 
-static struct tipc_conn *tipc_conn_alloc(struct tipc_topsrv *s)
+static struct tipc_conn *tipc_conn_alloc(struct tipc_topsrv *s, struct socket *sock)
 {
 	struct tipc_conn *con;
 	int ret;
@@ -202,10 +202,11 @@ static struct tipc_conn *tipc_conn_alloc(struct tipc_topsrv *s)
 	}
 	con->conid = ret;
 	s->idr_in_use++;
-	spin_unlock_bh(&s->idr_lock);
 
 	set_bit(CF_CONNECTED, &con->flags);
 	con->server = s;
+	con->sock = sock;
+	spin_unlock_bh(&s->idr_lock);
 
 	return con;
 }
@@ -467,7 +468,7 @@ static void tipc_topsrv_accept(struct work_struct *work)
 		ret = kernel_accept(lsock, &newsock, O_NONBLOCK);
 		if (ret < 0)
 			return;
-		con = tipc_conn_alloc(srv);
+		con = tipc_conn_alloc(srv, newsock);
 		if (IS_ERR(con)) {
 			ret = PTR_ERR(con);
 			sock_release(newsock);
@@ -479,7 +480,6 @@ static void tipc_topsrv_accept(struct work_struct *work)
 		newsk->sk_data_ready = tipc_conn_data_ready;
 		newsk->sk_write_space = tipc_conn_write_space;
 		newsk->sk_user_data = con;
-		con->sock = newsock;
 		write_unlock_bh(&newsk->sk_callback_lock);
 
 		/* Wake up receive process in case of 'SYN+' message */
@@ -577,12 +577,11 @@ bool tipc_topsrv_kern_subscr(struct net *net, u32 port, u32 type, u32 lower,
 	sub.filter = filter;
 	*(u64 *)&sub.usr_handle = (u64)port;
 
-	con = tipc_conn_alloc(tipc_topsrv(net));
+	con = tipc_conn_alloc(tipc_topsrv(net), NULL);
 	if (IS_ERR(con))
 		return false;
 
 	*conid = con->conid;
-	con->sock = NULL;
 	rc = tipc_conn_rcv_sub(tipc_topsrv(net), con, &sub);
 	if (rc >= 0)
 		return true;
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
