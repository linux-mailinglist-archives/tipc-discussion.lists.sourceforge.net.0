Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5923D430D
	for <lists+tipc-discussion@lfdr.de>; Sat, 24 Jul 2021 00:46:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m73vr-0003jx-Rz; Fri, 23 Jul 2021 22:46:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1m73vq-0003jp-Bz
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 22:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IXMHN1p1xWo4UB7EaGyYonwfbbu8eU/2HKestiCVXqw=; b=NUDNyE6rIWefby30SqiAUQkDKl
 ONcnCrMAi099ZUP6DUXbIFCVPvBrWsmLJSo3MvGSrfghf/JaMaCAAC75klDXq/VXGWmuQs/HNV5Xa
 x2pxJyC5cVNjowsczSmGCJlQ+7mXQwgBD1mxkdNTboKrHikFtM8nmzYmsrM3YNq4yBq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IXMHN1p1xWo4UB7EaGyYonwfbbu8eU/2HKestiCVXqw=; b=W
 It8IMQUPlrJxFGOIuDRLaLcWVLyZ7HqhelEmnStLYrZcXd/AQiFKz1Ccd21hYMtDny0TiIqIKpiRd
 HX8YbZiE2SG8NRvwa8XqvarFsdeAL6/dMzxPPDdsMXoCgNVMsGvjmoX8khMCvnMT47MO7o1Ec10zx
 APhckpYRZevZoctI=;
Received: from mail-qv1-f49.google.com ([209.85.219.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m73vk-00049D-1k
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 22:46:14 +0000
Received: by mail-qv1-f49.google.com with SMTP id l16so2118487qvw.1
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 23 Jul 2021 15:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IXMHN1p1xWo4UB7EaGyYonwfbbu8eU/2HKestiCVXqw=;
 b=qDNIn540u8CMMuCMP4l1j3lUgiKkAAvpUk27+ESx7qyCvUheLiMVbqqbsM/1WMUIxt
 aKOG04AXykFGqOiaLwD0Rwsx7bnTy3x5LOymVYBZoi0bH3q9Jn/mCjTOE1blMZxdoQMJ
 aiTwb2UMn+RvTeUHQPPFsghi2HqJGR18hWL0xzgcOb1tGxPLpcs8f9bCTKQe5InIoE91
 Wc7W2dkJT3k8MYLp7l+3NQLH1unD/Q7pfB6NZHLQZ505mBZ4S40QEBxBI71CjljVrzCG
 llEcAxUnJTj/aHEWFhvoz9wSB3J6KHbyE6PCLAuEzxn1MyajiCBdCc2oxPSRafrRhpxz
 2SMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IXMHN1p1xWo4UB7EaGyYonwfbbu8eU/2HKestiCVXqw=;
 b=YS8+6MUzl6XLp9S0mWoAt3ZXO8DKf/t4x0TgN+ZbkmjWvK49f9JdDwmddYgEWc7WO4
 iIDGjaLttzXpFpRqPyM6aJz1c3Cywvs23tGAtEzbNm67HEOWuAuqq42K5FhcAj+7QB7C
 MYI/x5zfwn8H5SAWb78+4OZzLuoNEN1wrbTtUCalNgma4ANWVYGalxqqAqbyLICsGJMr
 T6QAcEmgCX90d3ev7wF5JpwkK6dPIwAt7dubocWulAETxwv+t7x2kENmdgZYMU081J8f
 Q3+SRYfB9TI+v4xkHvKujo7yaoJ5az7B5WS7nB9kzokcTlPkcv1N6pNI35QDaoKWkWmn
 KmEw==
X-Gm-Message-State: AOAM533Op6TMYhrvhSXhj5xjRTgKqc/4c2JnEUjglhu8q30ni5iT+OlR
 Dvw6mLlpx2O6N6jmxCWcp1XWiTmp7iIxnw==
X-Google-Smtp-Source: ABdhPJyIE1z3kqZhOsFM5lJWIld2Eqkq0l+ifRZKsWBXlhPbQrxYqAfWBytrB4wWhBFgyXMMl+L1OA==
X-Received: by 2002:a0c:db01:: with SMTP id d1mr6933874qvk.38.1627080362255;
 Fri, 23 Jul 2021 15:46:02 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id e123sm14928798qkf.103.2021.07.23.15.46.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 15:46:01 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 23 Jul 2021 18:46:01 -0400
Message-Id: <453b10a48c21d1882bbee21fe2c84197faad75e1.1627080361.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m73vk-00049D-1k
Subject: [tipc-discussion] [PATCH net] tipc: do not write skb_shinfo frags
 when doing decrytion
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
Cc: Sabrina Dubroca <sd@queasysnail.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

One skb's skb_shinfo frags are not writable, and they can be shared with
other skbs' like by pskb_copy(). To write the frags may cause other skb's
data crash.

So before doing en/decryption, skb_cow_data() should always be called for
a cloned or nonlinear skb if req dst is using the same sg as req src.
While at it, the likely branch can be removed, as it will be covered
by skb_cow_data().

Note that esp_input() has the same issue, and I will fix it in another
patch. tipc_aead_encrypt() doesn't have this issue, as it only processes
linear data in the unlikely branch.

Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/crypto.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index e5c43d4d5a75..c9391d38de85 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -898,16 +898,10 @@ static int tipc_aead_decrypt(struct net *net, struct tipc_aead *aead,
 	if (unlikely(!aead))
 		return -ENOKEY;
 
-	/* Cow skb data if needed */
-	if (likely(!skb_cloned(skb) &&
-		   (!skb_is_nonlinear(skb) || !skb_has_frag_list(skb)))) {
-		nsg = 1 + skb_shinfo(skb)->nr_frags;
-	} else {
-		nsg = skb_cow_data(skb, 0, &unused);
-		if (unlikely(nsg < 0)) {
-			pr_err("RX: skb_cow_data() returned %d\n", nsg);
-			return nsg;
-		}
+	nsg = skb_cow_data(skb, 0, &unused);
+	if (unlikely(nsg < 0)) {
+		pr_err("RX: skb_cow_data() returned %d\n", nsg);
+		return nsg;
 	}
 
 	/* Allocate memory for the AEAD operation */
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
