Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF51A38205A
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 May 2021 20:29:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1liLVy-0006Rd-VW; Sun, 16 May 2021 18:29:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1liLVr-0006RC-Dd
 for tipc-discussion@lists.sourceforge.net; Sun, 16 May 2021 18:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=th+JQDDOusQXsKw3hnWKrNIHdArIdeb6yYB/CrRj8QE=; b=fVLnqK7BX7JvlpvNrvh60gR2hJ
 IB09LLJib4Lwe06/NP/40wI+8N7ldeQ6lSfEC8kSMKfRrGvD4D4CDZcLunyrDa7QFm7XWtfx6ubRA
 xyOWUgqY9/PZXGw9yqn2m7pjeQhGbp3eocfu1Ai0ULRLh8CK8/iNblXsTbBoijTnyt+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=th+JQDDOusQXsKw3hnWKrNIHdArIdeb6yYB/CrRj8QE=; b=GQeD42DPfE0LTF1Fk5qN7lRzR9
 8RjxXma1kqqjlezg5LKlEcqrRbleHIDS8RNBr4yEGJxTyBpWnQaWXvo1C3CsIH2Wd0DB/H1tNsWxE
 dmg4gN0l5x2qB7sjY89j6GVKf/h7ZjIJ3d7Buxf0DayAw/UzhVehAMFJpMWZJjPOVSRM=;
Received: from mail-pf1-f176.google.com ([209.85.210.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1liLVo-0003Ru-3u
 for tipc-discussion@lists.sourceforge.net; Sun, 16 May 2021 18:29:13 +0000
Received: by mail-pf1-f176.google.com with SMTP id 10so3485327pfl.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 16 May 2021 11:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=th+JQDDOusQXsKw3hnWKrNIHdArIdeb6yYB/CrRj8QE=;
 b=h9C91KXaj/tVj78/tcKfGXrwimTUxqSyIKZPnlpn6UbAOVHKCc0zTLP9Xg/wg2uObA
 u1nHR3qo8LjeyvHvInI3W535E+9nTeO0TTSmeoIHZdbtv85yynRUUDhxlkXXZR7g4scL
 PSjEw8MXCK5bbMkWbhlV3CEyJkhawgFxLcZhTOKDbLbdDn4aBjA+bWBwpmnccIkOHqbc
 PeQXtdxbUO+r3Sxekxr4MOsImNCvKqvKF594dTv4FMNDFY5mue7aNMx1yONxg+HaDu+v
 vW6fQOGG7O9RBArJaubXvKhhYDtOpTuOLiwUiOhY990E3EZ2Bni4kCPTuz1PJgfV0nD1
 NRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=th+JQDDOusQXsKw3hnWKrNIHdArIdeb6yYB/CrRj8QE=;
 b=ADTpQvUdq9aGILPijx/4+aALDHSCH5eoU9hZDSvCDPTRlFpJtwMpYy3E0rNcZKBRq4
 +6YKnzSN5HubSadkgGyQyo/zQsWfYPfvuMgWQCDmq/6xZf6Iin8nxFrH/XP0dmQvQv19
 Yg2oaOAtP0/U8/aq20eyJ7Z73SafdxW/YhJtYxjPx0DYSoi8t9q6XbrXDwZ7xXg+3KPp
 A6FUZ4nvF+Z+8czNS2n/+vnTIFHmvFnSvhcQWP3i0/jOcPShx882YucCdcxfZNRduQMs
 19vSbqNr//Obu8G2u7P2+3cdXt8Mk35N6ihu5wQswwgc7ujmiOQXmK1ylKQf/cZKzwfc
 46UA==
X-Gm-Message-State: AOAM532eCJn6sa4xEEkFaJeFPHCYChKzdPbpZsmnVQWR380Q1tah0wgH
 ug22NUDVd8DunFnH5TqyJAU=
X-Google-Smtp-Source: ABdhPJxOtLTqD2mtDfhvmpPpt5vUZoGb+ju4pnA/SBEGCT27v3tJ6fS3F8fSkuTpBq3FsMQjat73LA==
X-Received: by 2002:a63:af57:: with SMTP id s23mr5671726pgo.393.1621189747459; 
 Sun, 16 May 2021 11:29:07 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s12sm13382083pji.5.2021.05.16.11.29.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 May 2021 11:29:07 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 17 May 2021 02:28:58 +0800
Message-Id: <5db04a37335895e04e98bdf53aff3c8ecb6774db.1621189738.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.176 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1liLVo-0003Ru-3u
Subject: [tipc-discussion] [PATCH net] tipc: wait and exit until all work
 queues are done
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On some host, a crash could be triggered simply by repeating these
commands several times:

  # modprobe tipc
  # tipc bearer enable media udp name UDP1 localip 127.0.0.1
  # rmmod tipc

  [] BUG: unable to handle kernel paging request at ffffffffc096bb00
  [] Workqueue: events 0xffffffffc096bb00
  [] Call Trace:
  []  ? process_one_work+0x1a7/0x360
  []  ? worker_thread+0x30/0x390
  []  ? create_worker+0x1a0/0x1a0
  []  ? kthread+0x116/0x130
  []  ? kthread_flush_work_fn+0x10/0x10
  []  ? ret_from_fork+0x35/0x40

When removing the TIPC module, the UDP tunnel sock will be delayed to
release in a work queue as sock_release() can't be done in rtnl_lock().
If the work queue is schedule to run after the TIPC module is removed,
kernel will crash as the work queue function cleanup_beareri() code no
longer exists when trying to invoke it.

To fix it, this patch introduce a member wq_count in tipc_net to track
the numbers of work queues in schedule, and  wait and exit until all
work queues are done in tipc_exit_net().

Fixes: d0f91938bede ("tipc: add ip/udp media type")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/core.c      | 2 ++
 net/tipc/core.h      | 2 ++
 net/tipc/udp_media.c | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 5cc1f03..72f3ac7 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -119,6 +119,8 @@ static void __net_exit tipc_exit_net(struct net *net)
 #ifdef CONFIG_TIPC_CRYPTO
 	tipc_crypto_stop(&tipc_net(net)->crypto_tx);
 #endif
+	while (atomic_read(&tn->wq_count))
+		cond_resched();
 }
 
 static void __net_exit tipc_pernet_pre_exit(struct net *net)
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 03de7b2..5741ae4 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -149,6 +149,8 @@ struct tipc_net {
 #endif
 	/* Work item for net finalize */
 	struct tipc_net_work final_work;
+	/* The numbers of work queues in schedule */
+	atomic_t wq_count;
 };
 
 static inline struct tipc_net *tipc_net(struct net *net)
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index e556d2c..c2bb818 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -814,6 +814,7 @@ static void cleanup_bearer(struct work_struct *work)
 		kfree_rcu(rcast, rcu);
 	}
 
+	atomic_dec(&tipc_net(sock_net(ub->ubsock->sk))->wq_count);
 	dst_cache_destroy(&ub->rcast.dst_cache);
 	udp_tunnel_sock_release(ub->ubsock);
 	synchronize_net();
@@ -834,6 +835,7 @@ static void tipc_udp_disable(struct tipc_bearer *b)
 	RCU_INIT_POINTER(ub->bearer, NULL);
 
 	/* sock_release need to be done outside of rtnl lock */
+	atomic_inc(&tipc_net(sock_net(ub->ubsock->sk))->wq_count);
 	INIT_WORK(&ub->work, cleanup_bearer);
 	schedule_work(&ub->work);
 }
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
