Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6864354B03
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Apr 2021 04:45:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lTbiq-000287-5B; Tue, 06 Apr 2021 02:45:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lTbio-00027z-1f
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Apr 2021 02:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gl2BFEkCoDtmwGmzxzT5c7YxkCDCRL5qgOQzUI0dIQ4=; b=UWKNqMR/DQiqrjhXgcps7iLg37
 /M/V94HCOqBMtH2969RovZPqGQVQZFSpGLiiIhV+vpNAGGUmBfA6U0vf3ZXAGsmo+7zMz13g/cdst
 6nwcSN0xFbh2Bnl3Rj6YlVrm0Vpi4Ef9SehXJaz20/eBxBdWO0BedcwY8MpHhDGwlVek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gl2BFEkCoDtmwGmzxzT5c7YxkCDCRL5qgOQzUI0dIQ4=; b=QUqezrjeAv4W05ezmo4I/dBxII
 DbxI0eYXDWUtCTa+L+FHNepr/f73HiAmd7/p/d5JTMEbu/N3AvwKyi6DDonfZuoOADWWYkXPuGeiz
 BA1MrVkXINASbPS/y/gRKiwtO0QJMboBEh25WMZsnGR+ObwE9YdhPB+gJ6S2CoO7BsZI=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lTbii-0006cz-UO
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Apr 2021 02:45:42 +0000
Received: by mail-pf1-f170.google.com with SMTP id g15so9416996pfq.3
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 05 Apr 2021 19:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gl2BFEkCoDtmwGmzxzT5c7YxkCDCRL5qgOQzUI0dIQ4=;
 b=C7OflORWo003HRWv3LYbSA+lPOUhEcl7QTOc/rOXH7JQBrnJwSHD2NioMjydj0DaeQ
 8q5H8Hxd3GNllhL2o4K5ts06S4UeLlVsw1OYi5ESRK+gcTou2QEztxgexJELg4qW1goD
 X84DbKsodCdqVSFRSCj9ipbXkmrjsBsec9wO3ABOjlP80PYfuij5h/mASd+VTHtlsm2t
 ZQQ7xsigdMiMFJdaDnJ7tDkmFE4wZVvg+QKfyVD9hIYSDB8MhLH6wBDvHFgGXunsdxII
 Q5yIRhQxv+sWQtRxzhAksm332cj2MKL8Q3O9UXCgNwTsFDglq9GYPy6+/0ZhyR7rlxJA
 T2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gl2BFEkCoDtmwGmzxzT5c7YxkCDCRL5qgOQzUI0dIQ4=;
 b=rmIjWUtSqx2sBQ0oAZzLs2p9JyuBcqpNFQjRaRxyAWZ/zTc9rt6d20kH/9BIJoJtC4
 UjhIu2TH9oEb3KiN53FC+wbPdcUVU3bVF+OMqlNI8uaSPpJz+Eh7mQjYvDY2RMlj4ncJ
 qnuSKApcNrXSQdECCDzO7h3E+Z2utXxE6hrnh4L0a4frF9kCIuo7fGarF7ce2QlODzpz
 InpBAGY4JqqTz8d0QRKASCtoxIS2ttKTwKnVp+QzFiTtgVhkrrsz+qAYPz8+002vTFwz
 6t0sgOSgIiTs5tpRUn9uP4KXuUp59h8rEn/qYLmud3onY94YuDYS1RCgWdahBv16zL2/
 poAg==
X-Gm-Message-State: AOAM532x7gqYN0zcqlSuYPbZg0yIJzC4+/luSZ2coWFvnu32jY55Z0lM
 9RZnXWOUGCSqo433JKeMVTE=
X-Google-Smtp-Source: ABdhPJz5G8Je67f+YEuq9WjrMo1f+/JusrFUHAz88/dJ2YJrxIPVFkF88EF3PQeX20RYBqUmAvQ0Hw==
X-Received: by 2002:a62:ddd2:0:b029:1f1:533b:b1cf with SMTP id
 w201-20020a62ddd20000b02901f1533bb1cfmr25409528pff.56.1617677131323; 
 Mon, 05 Apr 2021 19:45:31 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id r26sm10441989pgn.15.2021.04.05.19.45.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Apr 2021 19:45:30 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Apr 2021 10:45:23 +0800
Message-Id: <c273cb4165a007c0125fac044def1416bd302fc7.1617677123.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.170 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lTbii-0006cz-UO
Subject: [tipc-discussion] [PATCH net] tipc: increment the tmp aead refcnt
 before attaching it
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
Cc: kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Li Shuang found a NULL pointer dereference crash in her testing:

  [] BUG: unable to handle kernel NULL pointer dereference at 0000000000000020
  [] RIP: 0010:tipc_crypto_rcv_complete+0xc8/0x7e0 [tipc]
  [] Call Trace:
  []  <IRQ>
  []  tipc_crypto_rcv+0x2d9/0x8f0 [tipc]
  []  tipc_rcv+0x2fc/0x1120 [tipc]
  []  tipc_udp_recv+0xc6/0x1e0 [tipc]
  []  udpv6_queue_rcv_one_skb+0x16a/0x460
  []  udp6_unicast_rcv_skb.isra.35+0x41/0xa0
  []  ip6_protocol_deliver_rcu+0x23b/0x4c0
  []  ip6_input+0x3d/0xb0
  []  ipv6_rcv+0x395/0x510
  []  __netif_receive_skb_core+0x5fc/0xc40

This is caused by NULL returned by tipc_aead_get(), and then crashed when
dereferencing it later in tipc_crypto_rcv_complete(). This might happen
when tipc_crypto_rcv_complete() is called by two threads at the same time:
the tmp attached by tipc_crypto_key_attach() in one thread may be released
by the one attached by that in the other thread.

This patch is to fix it by incrementing the tmp's refcnt before attaching
it instead of calling tipc_aead_get() after attaching it.

Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/crypto.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index f4fca8f..97710ce 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -1941,12 +1941,13 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 			goto rcv;
 		if (tipc_aead_clone(&tmp, aead) < 0)
 			goto rcv;
+		WARN_ON(!refcount_inc_not_zero(&tmp->refcnt));
 		if (tipc_crypto_key_attach(rx, tmp, ehdr->tx_key, false) < 0) {
 			tipc_aead_free(&tmp->rcu);
 			goto rcv;
 		}
 		tipc_aead_put(aead);
-		aead = tipc_aead_get(tmp);
+		aead = tmp;
 	}
 
 	if (unlikely(err)) {
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
