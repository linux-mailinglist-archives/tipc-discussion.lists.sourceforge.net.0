Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3A33D3F16
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 19:44:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6zDk-0000ug-4z; Fri, 23 Jul 2021 17:44:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m6zDa-0000tK-4H
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 17:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yT57TfrX7t0LSbwOib2OR7IL2i+RPHAMqegtWTabivk=; b=Kp8qKD7eDU+4l7UakOi3sAWO5R
 AVosxd7rwavsTm7tvY0UG8ww0p3NUAK36UAfvsFlrKBt0odOQ14CjaRCdZ2WgYKnrYchqKE07cM5g
 vdlugwHpRqLUln2WMxnDJNAV3ky2xLl7d2eBPzM71dWj7kh8UurnHyoqmsb+cI4o09AE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yT57TfrX7t0LSbwOib2OR7IL2i+RPHAMqegtWTabivk=; b=P
 k6iME7l3pMgfp/VLx6QJ/D7NtOS9I7LdnN67Pfgzgx3oxRohy5nqWWQd/e+T6bHMvCmvWVGhvnD1r
 P/kJB/G5JmCY0hYj4baE+tfIC94jlPcH0BVskRLlTOp5YDwLfQcO4/4FQD9Uvs2IWT2Ss3iiY5eeS
 CG8iO7UF/2qSCr3U=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6zDQ-0000s5-L5
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 17:44:14 +0000
Received: by mail-pj1-f41.google.com with SMTP id
 k4-20020a17090a5144b02901731c776526so9975116pjm.4
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 23 Jul 2021 10:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yT57TfrX7t0LSbwOib2OR7IL2i+RPHAMqegtWTabivk=;
 b=awdyrhag9WU7LRA8bNKIwbtUSHSqfJaPfEMt5ThvfGlbx5cF5mXdmUdzmQ8/TiTq1L
 BGAzcqQsH22t+OhNEQem3m1p9H6ALRh+RTNmc9Ep8X0zYySCeacFelDeNJbLPtuxffhw
 0GlImua4nQNL2Ui8p3QtJ969ejoJ4rRgWAGK/n/CmQUVn1YNiPhzsxAPiIrQlaArkGlV
 jXK4p1VoE4lp8DLvkS3scvDQLswxiplbSS7ovisALo3lsWT/oRwvcwxPV7oLzsPxENSl
 rs8t7Vglfu8seucaVXj01/XMi0Hr+Fhw8g8GwmDnDGjTwChaBNJI9uoSqHFmBayCsHR1
 m5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yT57TfrX7t0LSbwOib2OR7IL2i+RPHAMqegtWTabivk=;
 b=aLGmiswujPVGfkp+svO3JFbVIzon+/KJIvAM39rszX6TIDcj7EVMRnPwEfG9TJjnfn
 RGSdY2cuGDgE51mEcCcRl0iXNgYfGNsLvZ6WS4Vqhi7EJDFtC05bMxOgS1e1Ecr/LEiD
 jjrkk2Fty5hR/jt417T3cYtU4eXAAFBjbdYo7xIMBctd8j10RLPAZvYwfms4AffT2SNX
 VaxrHYg9JV+AqB7Cfu3IsBFQLyLA8F9gHNxtEVcGsQqkdYUX/V1ZJyUTgy9u5AntMPo3
 Mh4CTApDb7h+h3Pzu3ldbboVDwgmJ3JmzBk8BPzpThBwF2NKNRoQTTGEevaHoMPPGGDb
 Sl1A==
X-Gm-Message-State: AOAM5317dV9ddEMZjoJyiYVn+jbT4IEcxz24jAkwWgyXwABoaOO7TqAP
 +fWiZ0u/2zhIb1+la8a63uVXO7xCLBUkPA==
X-Google-Smtp-Source: ABdhPJz4lh8Nimfrc9njDH+BdYhSHkczJjSNjoAdgYpk1UCth1GR8DM6EEpntHmTkoeb/yryuWODAg==
X-Received: by 2002:a17:902:ea0f:b029:12b:2395:62da with SMTP id
 s15-20020a170902ea0fb029012b239562damr4551049plg.39.1627062235627; 
 Fri, 23 Jul 2021 10:43:55 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s5sm5340675pfk.114.2021.07.23.10.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 10:43:55 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Fri, 23 Jul 2021 13:43:50 -0400
Message-Id: <3018b8d7103b4c0a4331b1e03194d047fd163782.1627062230.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6zDQ-0000s5-L5
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
