Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 414373DF9AA
	for <lists+tipc-discussion@lfdr.de>; Wed,  4 Aug 2021 04:28:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mB6dT-0000mk-3v; Wed, 04 Aug 2021 02:27:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1mB6dR-0000mX-Of
 for tipc-discussion@lists.sourceforge.net; Wed, 04 Aug 2021 02:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0eCq0VaYR7xUyPxcp7KBDvW6q6RvtG2r/p1AUDlOoss=; b=O8u+yci66yDpPp3AfubwV1xdJI
 NVlQua94Q0et7yksI3JP3JwvSuRv8pSOp0IKdrgBS9pwiQn/Yfv2Ny+MjYg3hMGLXYNTgOOyjw7jl
 Q7mNXuPRm+odx38f8lfEnFVUS/dfDmVFJ/0vYJqixYRxgDeXwTtVBfj+0SyqiVv//o7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0eCq0VaYR7xUyPxcp7KBDvW6q6RvtG2r/p1AUDlOoss=; b=M
 Apfv0FY7j4Qbvf3J+9C31nWQHkj/jlaF1v0JSyIW9qtfq/GrK9gBLVwwWNvFbsVijD8Qm0v25crhl
 fVgm263EdhKli+Y3+Ml3OW9wSQo2PZ+1CG/sYPjHIQf4os1uK/sxCfYEpSAjDb+7ndzx8q9krGt3K
 hB0IWaVYoWGSWHSo=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mB6dQ-00BdUU-ID
 for tipc-discussion@lists.sourceforge.net; Wed, 04 Aug 2021 02:27:57 +0000
Received: by mail-wr1-f47.google.com with SMTP id d8so480969wrm.4
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 03 Aug 2021 19:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0eCq0VaYR7xUyPxcp7KBDvW6q6RvtG2r/p1AUDlOoss=;
 b=aruBM4VuzEIDpPAP7DmuF8WvgdRDi0sP1oS83LYQwkoTlwi+0EAw1fVISkwKvMIJ2h
 gPjw+ywHGc8soFWLQCSmXdvbmEvqtw7NHkW1zGnaFz/8Ne+GknoP5oj5hp/SR0FzlF28
 NxGYkf05U4cPswFHq4kXe4890rSSwXe0DwTmvL+BCJA1a2DuDph9TpTEXDTe/85jbXz9
 q2RxtZ/QBH8nqNTfdunA2zitjlsfVf33MV7G0WFrD450b+xGKUNmXAuh6LeyZNF2D1be
 QLrGHAykoWl3vOM4Oes1iHTccVF0T3CbfbC3Kp+gCcs/MmMBPWhXE1xdOvDGSvIx4EP/
 Qbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0eCq0VaYR7xUyPxcp7KBDvW6q6RvtG2r/p1AUDlOoss=;
 b=DyndH9qf423uQ35ukVDYhnHeW73TNbzb3RPO6bILjObMPpdBmyTkBI0MjhuM76k3Rl
 aX4tmsacF9ZknsZRAcrQMQ6BqKaKwZaoYpon1NWRu6QJehbC2cdEd8uRen7qdUtbSxHG
 3wtZdeKyVcuhjii5Opp1QyB4ToBZNPQbZFGV0OCZORqyIq//uk36z1vnaHWYPGxxBZYd
 TlJ4vR/apqxNStj8uLOh24fDsWIHIOKNYPg3i7xbAhfHD/00xnfrT4lT0ILzWXclCpe+
 XG+vJGOLS31ZUIt2IMIf2mIKpFtACvIOJznX1/dlH/CQrKmVc8BX87pZ77XuLihZui6f
 xnjQ==
X-Gm-Message-State: AOAM530wj1RxjhozFj54qw1vZTtbcORfSMtrx9C9gbtl5grIseGDx9M/
 5kkUOrvY/td4/RsDlJLxhpVskePfCJhhkw==
X-Google-Smtp-Source: ABdhPJxnLJAribh8QSeadO+TUiSLkA9gvWzTnysCMr0hWrSipMHv8tZZSUWrIIyCGUlBUnTsOr1VTg==
X-Received: by 2002:a5d:6186:: with SMTP id j6mr26615118wru.115.1628044070094; 
 Tue, 03 Aug 2021 19:27:50 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l9sm647923wro.92.2021.08.03.19.27.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 19:27:49 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  3 Aug 2021 22:27:48 -0400
Message-Id: <c706915164e68af88170ad9bb31cbe20c393d5c6.1628044068.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.47 listed in list.dnswl.org]
X-Headers-End: 1mB6dQ-00BdUU-ID
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
