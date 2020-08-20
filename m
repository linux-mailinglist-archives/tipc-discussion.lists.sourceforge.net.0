Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE0E24B035
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Aug 2020 09:35:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k8f6I-0007Ys-IT; Thu, 20 Aug 2020 07:35:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k8f6H-0007Yk-1A
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Aug 2020 07:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ikWq08EvpDCyzI9v3iVFTyQ5+WIbjjvxO2Nm/ZMsk6Q=; b=C3tZWZd5VB2xD/BPk9FWWmQfxf
 QM+K/kF2JBUwVFzQ1fBP8dhhpFhsFGjbaaeokyELOQLoX/hinelrIa6iK2dPtFXyOVBi3D8dlYJgc
 yolL5Q979uCg1+w8GrQRg09vtmZheYQaesgHh7uHAc6KyukGI82oeP9zLoBid9ATC7G0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ikWq08EvpDCyzI9v3iVFTyQ5+WIbjjvxO2Nm/ZMsk6Q=; b=Ubx5B7rJD4cuNFtgEW1gyugzF9
 1/rFDPeU7VMTBJfuNphc4D0A+gzBpOMv4ddGkAnObB+lZzLiUg3OdYO031yIiA/9kxrI23lEBS+JQ
 5JXeVf9lgnwFzZR9wuPek19b86yd7lOXjlpaEUdL0RQQCWnma0uxueiWMHyUadd45LXY=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8f6D-0022gY-CU
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Aug 2020 07:35:04 +0000
Received: by mail-pj1-f67.google.com with SMTP id kr4so598508pjb.2
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Aug 2020 00:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ikWq08EvpDCyzI9v3iVFTyQ5+WIbjjvxO2Nm/ZMsk6Q=;
 b=njnlnfb09DuqkOOmojLuSciF9neE63ZqFQFWPdFNGJdytQ7o3CiHTJlcPJYWVQf0H9
 upjgtw32rWnILEDsFdDEvta8KXu9/n553PYPg1cAYGnFb4wwXkVfsa09HpsV6XNDPkZE
 j097UgUeQBePSu9E+j6kZcbOLKxyDTG7eRj+IGajKxKkvO4oH+EYm9+EEHD121AzZ68/
 FmQIxhU/Bd5S3tAeWNqoOL5da6OhmXv7A7w7OBGr2n9CZEMJSzNVVSN/zQi0Gt3AP3eW
 9oHcLx41F5NMHGYiL35teZm4Vck/7b1XndN/IrhSbBbOy4vzs2iAfudRzYGzxGUDjp3W
 S3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ikWq08EvpDCyzI9v3iVFTyQ5+WIbjjvxO2Nm/ZMsk6Q=;
 b=ATY/6Qj7fQwbuBIlq7aFZs+VVE54ng2ugnZWYEze8USsIw3T5hDifpy7GbgU9nIS+4
 IoGgcE9o8W/lzOhJY5JoikPTxckRo2Bf7VJm8GeKeNPT53493am+XNXQz5Gr6ObZwQCC
 dIamNyuM5HT6BaNvAXJ+FGrPHgrWU7VfMDYbS67soA22dUrt6/MlN4dvFgLy2aj7f/ME
 jmZ3cqswHDq6kfo98ro8PAiCVcdTZCTLxuS8INgrYo2h1/PMoEj+2MXnhTTLANquW7/9
 yuMDazAZOwCGsa9TsfvC3gm/9SeLtGCa6vqcEsh4S3QPS+Mn/k2KW+lDUN3TV/XkzuRg
 kaHA==
X-Gm-Message-State: AOAM532Px5ZsoucONvGbGbOWJV1532sNlYN1U4glYcqfcxX/c2SlCRiu
 +REMgm0rbboUoNQGSGwWI+k=
X-Google-Smtp-Source: ABdhPJx1fwYiWtGpMFB5LBMaqvJ4cRLP9FE6ZQB456E48OWfp1J0A6PAtO1DLlT2MYP7uFJgOY8UHw==
X-Received: by 2002:a17:902:301:: with SMTP id 1mr1693126pld.198.1597908895693; 
 Thu, 20 Aug 2020 00:34:55 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id g10sm1739896pfb.82.2020.08.20.00.34.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Aug 2020 00:34:54 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Thu, 20 Aug 2020 15:34:47 +0800
Message-Id: <7f24b6b0a0d2cb82b9dfbf5343c01266d2840561.1597908887.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k8f6D-0022gY-CU
Subject: [tipc-discussion] [PATCH net] tipc: call rcu_read_lock() in
 tipc_aead_encrypt_done()
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
Cc: tipc-discussion@lists.sourceforge.net, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

b->media->send_msg() requires rcu_read_lock(), as we can see
elsewhere in tipc,  tipc_bearer_xmit, tipc_bearer_xmit_skb
and tipc_bearer_bc_xmit().

Syzbot has reported this issue as:

  net/tipc/bearer.c:466 suspicious rcu_dereference_check() usage!
  Workqueue: cryptd cryptd_queue_worker
  Call Trace:
   tipc_l2_send_msg+0x354/0x420 net/tipc/bearer.c:466
   tipc_aead_encrypt_done+0x204/0x3a0 net/tipc/crypto.c:761
   cryptd_aead_crypt+0xe8/0x1d0 crypto/cryptd.c:739
   cryptd_queue_worker+0x118/0x1b0 crypto/cryptd.c:181
   process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
   worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
   kthread+0x3b5/0x4a0 kernel/kthread.c:291
   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293

So fix it by calling rcu_read_lock() in tipc_aead_encrypt_done()
for b->media->send_msg().

Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
Reported-by: syzbot+47bbc6b678d317cccbe0@syzkaller.appspotmail.com
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/crypto.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index 001bcb0..c38baba 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -757,10 +757,12 @@ static void tipc_aead_encrypt_done(struct crypto_async_request *base, int err)
 	switch (err) {
 	case 0:
 		this_cpu_inc(tx->stats->stat[STAT_ASYNC_OK]);
+		rcu_read_lock();
 		if (likely(test_bit(0, &b->up)))
 			b->media->send_msg(net, skb, b, &tx_ctx->dst);
 		else
 			kfree_skb(skb);
+		rcu_read_unlock();
 		break;
 	case -EINPROGRESS:
 		return;
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
