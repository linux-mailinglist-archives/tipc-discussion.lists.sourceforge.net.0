Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5A83EC7E6
	for <lists+tipc-discussion@lfdr.de>; Sun, 15 Aug 2021 09:13:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mFAL6-0005S9-HA; Sun, 15 Aug 2021 07:13:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1mFAL4-0005S1-Ul
 for tipc-discussion@lists.sourceforge.net; Sun, 15 Aug 2021 07:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/ib3wWEROhd5UHEUAQkbVJo5eQ4Oa8CwrF9bgbAj9JI=; b=JDBgppJibLtMNZMgMn3WcRb0pk
 jpqYvijQIpIgIynSuvKAsfMiOMcrp+kDtBtiSEr+P8QO+R9GiM2q30Ep6GWvVTSvR2uq97JMgfdBf
 /J4/+DfmG+V0oZXOu3seSqbNIUtMrAxTk+yACDZ8Y4MSkD0DHjR+08YcDpVMFdsV08Bc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/ib3wWEROhd5UHEUAQkbVJo5eQ4Oa8CwrF9bgbAj9JI=; b=a
 zh5sKEU1avzP+RHxEfLRBslILGmntryaNyhQaFDtDGiQsvCyvZdhGquku/nrWDLDBVNoUWWVyd8UC
 FFmca+tQxdJF2UsLdMOsGvIxf4ZYqMVByKyG6P42aSvLn9qsVVElTo9OFQnDHA5+XNRsClaTn2TjH
 cZ2MnTOMqeJpPFYg=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mFAL3-0006Dv-3v
 for tipc-discussion@lists.sourceforge.net; Sun, 15 Aug 2021 07:13:46 +0000
Received: by mail-qk1-f178.google.com with SMTP id t190so2403530qke.7
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 15 Aug 2021 00:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ib3wWEROhd5UHEUAQkbVJo5eQ4Oa8CwrF9bgbAj9JI=;
 b=N93tpXaCJD+gvz1BiOtpdGgFtFz5+h9jjm6U9OUUfk2tPdSMCIuDxUWTRUuLJRSm9S
 sRfzbLZndKqpWc15EWPXfmrE86H6yXL1ATEIoB+pWVs0/F1VwJManz6DK4MsIfxW2LHj
 Ord6dg8Vjtwt1L9e3IL+9t9WUresKaUnRUgtP5q1sN8+GyqvQmFJmMGI4nUUs/lQUQCR
 Vksukt9LS4zXScRlpPSAouFzgUpYdhz2KOmd2yCH0sMo3AWOa7sw7evKiGIlGpFdzev8
 vqYImm6qhdVjQSEZC8qV6N/Ki3kRDAC+FZ7+i0xciszH3OtYEfSN3V/++iq8MOJUD8Cf
 Yhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ib3wWEROhd5UHEUAQkbVJo5eQ4Oa8CwrF9bgbAj9JI=;
 b=m+0DNljSsyJhHeGlOEWoDgJcW32dMNj2xuHeFtXYMFnPGhki3Wm4+hLHR0Lz2yOFZq
 UABCCj0MoYpF4i71x2N4ImVh561zhIXTjEY6TV/yrHYtWot4V6wj+Kbrg6GANC2PLSCH
 EWE9CP/BvGFWCyWCyOav8YpNP64nV2K6tQnVApeVikcDj/ZgzZvcQwY8ixp8CASpc+mw
 dgFQ5f7kuRulG/DpX67ur15Wb82Wf5LAM05RzX02WPG1ivhDdMRQcn/NO2zjaGFrykoV
 REZ0nqG14FiiftLnMCooCtVqUhwNCpekA78Xi72BJg2R50iyht0fBC1Y6BfdC0soTJoc
 IozQ==
X-Gm-Message-State: AOAM530tZLqZo+J1ei5G7enmdNSVWo29vrdzPdzjtfgQuJzFJ374u4oo
 PTrf2mU3D5lnN631U20axBA=
X-Google-Smtp-Source: ABdhPJy055qDm8GSCzL/CPbr2argWOTIQMLRvkdPSrAXBBX0G43UYb8J8uDRLcIqGrmqDs2bsJJARQ==
X-Received: by 2002:a05:620a:138c:: with SMTP id
 k12mr10381375qki.172.1629011619317; 
 Sun, 15 Aug 2021 00:13:39 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 75sm4189702qko.100.2021.08.15.00.13.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Aug 2021 00:13:38 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Sun, 15 Aug 2021 03:13:36 -0400
Message-Id: <7b0de7eba8cf97280106732f84800b55ff359604.1629011616.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.178 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mFAL3-0006Dv-3v
Subject: [tipc-discussion] [PATCH net] tipc: call tipc_wait_for_connect only
 when dlen is not 0
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

__tipc_sendmsg() is called to send SYN packet by either tipc_sendmsg()
or tipc_connect(). The difference is in tipc_connect(), it will call
tipc_wait_for_connect() after __tipc_sendmsg() to wait until connecting
is done. So there's no need to wait in __tipc_sendmsg() for this case.

This patch is to fix it by calling tipc_wait_for_connect() only when dlen
is not 0 in __tipc_sendmsg(), which means it's called by tipc_connect().

Note this also fixes the failure in tipcutils/test/ptts/:

  # ./tipcTS &
  # ./tipcTC 9
  (hang)

Fixes: 36239dab6da7 ("tipc: fix implicit-connect for SYN+")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 75b99b7eda22..8754bd885169 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1518,7 +1518,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 
 	if (unlikely(syn && !rc)) {
 		tipc_set_sk_state(sk, TIPC_CONNECTING);
-		if (timeout) {
+		if (dlen && timeout) {
 			timeout = msecs_to_jiffies(timeout);
 			tipc_wait_for_connect(sock, &timeout);
 		}
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
