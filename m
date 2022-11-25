Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FE1638F4B
	for <lists+tipc-discussion@lfdr.de>; Fri, 25 Nov 2022 18:47:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1oycmr-0001pt-CI;
	Fri, 25 Nov 2022 17:46:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1oycmq-0001pn-22
 for tipc-discussion@lists.sourceforge.net;
 Fri, 25 Nov 2022 17:46:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/0RT1UDB+rgQuo3hDD+sJfqCPq7Bq2PrPiWHxsUI7y4=; b=EqN9TZkRi8Yi8i3IxQcgVKF6Wd
 bdVbzKGnoWme0J0508BICl3N82zYnYhnhLyEpqvTWGT+7VBp9uqBAGQQMPiGC7ufs3eORla0Pkzax
 ovXFhoSAFqW4gphjGWXZEd8WTED3ppw4KDhFkP5KvRm3NGwxAPAoJJqZ5M7JUZJcGWwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/0RT1UDB+rgQuo3hDD+sJfqCPq7Bq2PrPiWHxsUI7y4=; b=e
 9JO50HU04j/erVJfV/xqvAFeTszF7sd6B2VriQHcvXvKJW3OjQCeSahvgh+leEq+OjNSt+yqsk4L3
 6jGJmNw3jLxMPDdDpconWykCiO15m2jmUngsiqFUsRXZ2afeXcGC5UceY3zXCTAJW4M3izjKCu8+p
 58t75nq8j1pW55As=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oycmp-00BPRD-8m for tipc-discussion@lists.sourceforge.net;
 Fri, 25 Nov 2022 17:46:51 +0000
Received: by mail-qt1-f171.google.com with SMTP id c15so2912485qtw.8
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 25 Nov 2022 09:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/0RT1UDB+rgQuo3hDD+sJfqCPq7Bq2PrPiWHxsUI7y4=;
 b=nrOjTkdMJy0wE9hFRFfnykbcMYiYgVdW7p46tkcwkh+gg3L7cCD9/fUHVO9iULzS6r
 eOcC0DrhOS467QOI3SI4vsK/kn6bokFVFomQNfDSFgqUUxJ3e7YM0D91bC067ZnRudak
 QrmhJMXbJYyJS8D4z8fTsW/3ruFU1Mt/+aKs5ON0EH4Kh7nzjrnNLpiJIS+r0XX+nX7H
 QesTkUtqKTB3zlGzP05U7fVlLWQKJ9l3a8P6N6N8FOID7tygNJKRLZbneuVu577VfKcU
 Egyc87XiW4TlEAtmi+ew5jcGOTaHyraiCspcMuSc4CUAYuo9BxEXaCc52LEPS/v4u1pV
 TcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/0RT1UDB+rgQuo3hDD+sJfqCPq7Bq2PrPiWHxsUI7y4=;
 b=suQOUE0Kvqov1haZEazbuOrnPZU/y+AlgKgMgof/Po4G/Z5RtBDsvJZ9GI4C7Y5RPU
 SzjxPbeIJIoH554OepB4VQTr9vSGLHvjumpUt8IFt1bPsOX6FqVMlNwnuJgGjwWlsXQk
 AXBZS1Mmap2Yrwdg+e9HOWnCK6H3lqgp3IvS65lVKAUI4dYx1LuK6aAKugn3PxpkwsE5
 1GwKhdtGU7L6O0a6nKYOZPFyCfWc6wC5GTxKaj44BbQ6x/IfwqFUnfwwFQ/907wR4Q7a
 67SjrnfHvjmBAB8ho3w/f9nAo4P7YOIG2ysj2twuYFoBrNRZ2noFTWDbgbSDg8M8lZ3p
 Axsw==
X-Gm-Message-State: ANoB5pmbRlaB85f4LlH7mnQH1PAsznTmYbYCIZJho8+LCQ5KniJ7AZIs
 0jrMTujRXLy9wYHfKFf5hnE=
X-Google-Smtp-Source: AA0mqf6WvpMmG6oaHXAtotWJGzFacckzwsPlrUVXrInoTQWP1OAj8J3h364toGXpNAi8pp/g0nCsgA==
X-Received: by 2002:ac8:1019:0:b0:3a5:42b9:d7aa with SMTP id
 z25-20020ac81019000000b003a542b9d7aamr36057618qti.58.1669398405405; 
 Fri, 25 Nov 2022 09:46:45 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 w21-20020a05620a0e9500b006faa88ba2b5sm3064121qkm.7.2022.11.25.09.46.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Nov 2022 09:46:44 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri, 25 Nov 2022 12:46:43 -0500
Message-Id: <1b1cdba762915325bd8ef9a98d0276eb673df2a5.1669398403.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As the call trace shows,
 the original skb was freed in tipc_msg_validate(), 
 and dereferencing the old skb cb would cause an use-after-free crash. BUG:
 KASAN: use-after-free in tipc_crypto_rcv_complete+0x1835/0x2240 [tipc] Call
 Trace: <IRQ> tipc_crypto_rcv_complete+0x1835/0x2240 [tipc]
 tipc_crypto_rcv+0xd32/0x1ec0
 [tipc] tipc_rcv+0x744/0x1150 [ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
X-Headers-End: 1oycmp-00BPRD-8m
Subject: [tipc-discussion] [PATCH net] tipc: re-fetch skb cb after
 tipc_msg_validate
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

As the call trace shows, the original skb was freed in tipc_msg_validate(),
and dereferencing the old skb cb would cause an use-after-free crash.

  BUG: KASAN: use-after-free in tipc_crypto_rcv_complete+0x1835/0x2240 [tipc]
  Call Trace:
   <IRQ>
   tipc_crypto_rcv_complete+0x1835/0x2240 [tipc]
   tipc_crypto_rcv+0xd32/0x1ec0 [tipc]
   tipc_rcv+0x744/0x1150 [tipc]
  ...
  Allocated by task 47078:
   kmem_cache_alloc_node+0x158/0x4d0
   __alloc_skb+0x1c1/0x270
   tipc_buf_acquire+0x1e/0xe0 [tipc]
   tipc_msg_create+0x33/0x1c0 [tipc]
   tipc_link_build_proto_msg+0x38a/0x2100 [tipc]
   tipc_link_timeout+0x8b8/0xef0 [tipc]
   tipc_node_timeout+0x2a1/0x960 [tipc]
   call_timer_fn+0x2d/0x1c0
  ...
  Freed by task 47078:
   tipc_msg_validate+0x7b/0x440 [tipc]
   tipc_crypto_rcv_complete+0x4b5/0x2240 [tipc]
   tipc_crypto_rcv+0xd32/0x1ec0 [tipc]
   tipc_rcv+0x744/0x1150 [tipc]

This patch fixes it by re-fetching the skb cb from the new allocated skb
after calling tipc_msg_validate().

Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/crypto.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index f09316a9035f..d67440de011e 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -1971,6 +1971,9 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 	/* Ok, everything's fine, try to synch own keys according to peers' */
 	tipc_crypto_key_synch(rx, *skb);
 
+	/* Re-fetch skb cb as skb might be changed in tipc_msg_validate */
+	skb_cb = TIPC_SKB_CB(*skb);
+
 	/* Mark skb decrypted */
 	skb_cb->decrypted = 1;
 
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
