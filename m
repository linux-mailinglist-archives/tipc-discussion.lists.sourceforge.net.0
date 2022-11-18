Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4D62FF87
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Nov 2022 22:45:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ow9Ah-00054h-7J;
	Fri, 18 Nov 2022 21:45:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ow9Af-00054b-QY
 for tipc-discussion@lists.sourceforge.net;
 Fri, 18 Nov 2022 21:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E08daWDO5uBC8QYCnS2v+9gsgcE9y3M5Ew9Umckq1DY=; b=G0uRuZZv9+JTd+k0eOqdtMlcp0
 5tZMIrUxAatTmoeQikA4Ox3n+MBVtqltCnH30q+sT/zuZHSIWPIh3G83XxZhK+T63J+1QadpdBhJA
 v/EWgnvUOE6V8XsqPs6zeyIXEJuETHtWKIRE/kqdkphJoY+cp0Wykh7mBfMSQE1M7AwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E08daWDO5uBC8QYCnS2v+9gsgcE9y3M5Ew9Umckq1DY=; b=J2DpKt98ihVtKoprN7668Y8PA/
 t9cMJ0my0vg+O4BvDctcrLMoRCS60iRBWYvCMectF4rhMe1NuQ+Cv9Bdv2fGx8nytcEAzVShlvLAj
 JilVsluWWe5mxCz1WVkoGRZdagIJyi6carYkuyqoSqcHAeuI3K3cvXtjqznCiDlYiRFc=;
Received: from mail-qt1-f169.google.com ([209.85.160.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ow9Af-000818-82 for tipc-discussion@lists.sourceforge.net;
 Fri, 18 Nov 2022 21:45:13 +0000
Received: by mail-qt1-f169.google.com with SMTP id s4so4020425qtx.6
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 18 Nov 2022 13:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E08daWDO5uBC8QYCnS2v+9gsgcE9y3M5Ew9Umckq1DY=;
 b=GIkgP7tyhmZjvKxF2hAQeiwCrIgrgW0tRv09VLIwpiG8jTOrKWyMpDw08UlkZ/qNbn
 /1kHv2D5rbTgPgjmE/TwuckkA7N7ukFSr36Zk1tWaImzjT0Cp9syKyJFimHUVzpF8vXJ
 bHTI6Ia4UxM6cIdgh3PL/uft5ZB0auef2dunQlvCw8KGV48vBYBjGyGscOUorz3G538K
 Q257J0GFwoZR6xzQ2v/uxfAOO8NgSdfgPTjq5b015A7IIk+GWV6E2V/7rYC8CY6Hrgqv
 /q6Wt3T/nVB/ec/nlFChUBtcsBlV4FU4IrM/FSZdfD38+eRx2khwSUSNAOdcCt7RzesM
 Y1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E08daWDO5uBC8QYCnS2v+9gsgcE9y3M5Ew9Umckq1DY=;
 b=YYoGtUAED9IWftZbtbQbjtQlVHkwAzEXheuGG4JBNji64Oib9esma5fZN+LO4ajOZC
 6ldqSkaB0VFJ4slKd+a5sASR+nj/hc17nzzos19QJ5EZVWh3vLnyIsiWEwnlIn4uJ/3G
 AXMEGrij2/P5x7iG8Ttn5hSIWnVfZq2E2/ac0nwBXMRauUMvcMMSkRN+YnpH55ZRWoTR
 Q5Mp7wnjGtcwuyBZn3GUkmpOQyP+Ll6pGgDj/14xrA0Win5PAsWGMGY9vTrJJ8sno+1w
 rOAKG+T69zWByWlqxbqyWMf/Nlg0qY9G2JD0P/+WROhS1GNdfEeTLlNr6M/+5o50qqkV
 kktw==
X-Gm-Message-State: ANoB5pkJ1dS14KgtitAET2IX56OAUeresOKMIePkYHONoUvpHEHx8JCL
 q+TY0TyPXSsp2gRcwD6isAhlvoHy2tdT/Q==
X-Google-Smtp-Source: AA0mqf6BsUtLEoHNTIajW7m3zJG8mgx0zjtM1HaXH09zy+OC2iR9F8AEQ9MZNWsCUih8QgSADrF0Ow==
X-Received: by 2002:ac8:4d99:0:b0:3a5:5334:b3f7 with SMTP id
 a25-20020ac84d99000000b003a55334b3f7mr8433105qtw.584.1668807907422; 
 Fri, 18 Nov 2022 13:45:07 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 bi41-20020a05620a31a900b006f956766f76sm3232917qkb.1.2022.11.18.13.45.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Nov 2022 13:45:07 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri, 18 Nov 2022 16:45:01 -0500
Message-Id: <4e6c7e150d7268df5a166bbe19e14770bb70253d.1668807842.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1668807842.git.lucien.xin@gmail.com>
References: <cover.1668807842.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  One extra conn_get() is needed in tipc_conn_alloc(), as after
 tipc_conn_alloc() is called,
 tipc_conn_close() may free this con before deferencing
 it in tipc_topsrv_accept(): tipc_conn_alloc(); newsk = newsock->sk; <----
 tipc_conn_close(); write_lock_bh(&sk->sk_callback_lock); newsk->sk_data_ready
 = tipc_conn_data_ready; 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.169 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ow9Af-000818-82
Subject: [tipc-discussion] [PATCH net 2/2] tipc: add an extra conn_get in
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

One extra conn_get() is needed in tipc_conn_alloc(), as after
tipc_conn_alloc() is called, tipc_conn_close() may free this
con before deferencing it in tipc_topsrv_accept():

   tipc_conn_alloc();
   newsk = newsock->sk;
                                 <---- tipc_conn_close();
   write_lock_bh(&sk->sk_callback_lock);
   newsk->sk_data_ready = tipc_conn_data_ready;

Then an uaf issue can be triggered:

  BUG: KASAN: use-after-free in tipc_topsrv_accept+0x1e7/0x370 [tipc]
  Call Trace:
   <TASK>
   dump_stack_lvl+0x33/0x46
   print_report+0x178/0x4b0
   kasan_report+0x8c/0x100
   kasan_check_range+0x179/0x1e0
   tipc_topsrv_accept+0x1e7/0x370 [tipc]
   process_one_work+0x6a3/0x1030
   worker_thread+0x8a/0xdf0

This patch fixes it by holding it in tipc_conn_alloc(), then after
all accessing in tipc_topsrv_accept() releasing it. Note when does
this in tipc_topsrv_kern_subscr(), as tipc_conn_rcv_sub() returns
0 or -1 only, we don't need to check for "> 0".

Fixes: c5fa7b3cf3cb ("tipc: introduce new TIPC server infrastructure")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/topsrv.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index b0f9aa521670..e3b427a70398 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -206,6 +206,7 @@ static struct tipc_conn *tipc_conn_alloc(struct tipc_topsrv *s, struct socket *s
 	set_bit(CF_CONNECTED, &con->flags);
 	con->server = s;
 	con->sock = sock;
+	conn_get(con);
 	spin_unlock_bh(&s->idr_lock);
 
 	return con;
@@ -484,6 +485,7 @@ static void tipc_topsrv_accept(struct work_struct *work)
 
 		/* Wake up receive process in case of 'SYN+' message */
 		newsk->sk_data_ready(newsk);
+		conn_put(con);
 	}
 }
 
@@ -583,10 +585,11 @@ bool tipc_topsrv_kern_subscr(struct net *net, u32 port, u32 type, u32 lower,
 
 	*conid = con->conid;
 	rc = tipc_conn_rcv_sub(tipc_topsrv(net), con, &sub);
-	if (rc >= 0)
-		return true;
+	if (rc)
+		conn_put(con);
+
 	conn_put(con);
-	return false;
+	return !rc;
 }
 
 void tipc_topsrv_kern_unsubscr(struct net *net, int conid)
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
