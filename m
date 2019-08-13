Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F00A8B4D7
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Aug 2019 12:01:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxTcq-0002YK-HM; Tue, 13 Aug 2019 10:01:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1hxTcl-0002Xr-7V
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Aug 2019 10:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jT5xJBkCoybIaFe9xiaq3MqVAa2Y/rRjmr6GlOcVlLQ=; b=kJ/IuvaA7Fyq6yG2VJ8Ta2j5DA
 TmSg2Eg+aU2b1MfLbeJfCpfsq5K9gFf715EGM7aLvLV2ji5BMFp1tdPS9rGy+3IHU0UvBkKlaQhWy
 YwoZFVQDUhm1ZxbkWthi4DcfdZ77mcRccvco0r1/MiyFdD6KfrYMHJ6nULPotZs2jP8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jT5xJBkCoybIaFe9xiaq3MqVAa2Y/rRjmr6GlOcVlLQ=; b=FqzY+Pia6Eq0Uc+1Xfk+GghHgM
 YT5YPWufz+yaExv59t+aM/zcL3cPdwXdrdodhOGyoFAiizQ5LJc4czff6AkHwU+omnQ4g91LoRlss
 3q7Z1xAnXonF/Lfcs7UZ++XdnaY1FQRf/7OPvxLha6y2aU2Xcva9pSZZKzssshntiIR0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxTci-0026N0-7f
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Aug 2019 10:01:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id A257F48A93;
 Tue, 13 Aug 2019 20:01:40 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1565690500; bh=1ryQuJDg5cYOWSjgbDbCFxjMKUUG3lUeTCwm8t7lY/Y=; b=S
 Z5XSfOBstU8MS9YdVBd4ZvvQjUiJoyRBTo/uAdjy8vihoFJzQdK1gkYuQz01Up+l
 wvTMlfZ8dVMJAJUugDjRLc19t+XLY8IUuBZgkIkU11XO+Vi9G8KQkYPK+8+KPypD
 gwprGEGYu3f9ZJOn3lIzyPqgApcZn/PIhGmGq4RbQs=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id RbFn8NiWVduw; Tue, 13 Aug 2019 20:01:40 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 89C5148A94;
 Tue, 13 Aug 2019 20:01:40 +1000 (AEST)
Received: from tung-VirtualBox.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 2856248A93;
 Tue, 13 Aug 2019 20:01:38 +1000 (AEST)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue, 13 Aug 2019 17:01:29 +0700
Message-Id: <20190813100131.5987-2-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
References: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hxTci-0026N0-7f
Subject: [tipc-discussion] [net v1 1/3] tipc: fix potential memory leak in
 __tipc_sendmsg()
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

When initiating a connection message to a server side, the connection
message is cloned and added to the socket write queue. However, if the
cloning is failed, only the socket write queue is purged. It causes
memory leak because the original connection message is not freed.

This commit fixes it by purging the list of connection message when
it cannot be cloned.

Fixes: 6787927475e5 ("tipc: buffer overflow handling in listener socket")
Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/socket.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 83ae41d7e554..dcb8b6082757 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1392,8 +1392,10 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
-	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk->sk_write_queue)))
+	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk->sk_write_queue))) {
+		__skb_queue_purge(&pkts);
 		return -ENOMEM;
+	}
 
 	trace_tipc_sk_sendmsg(sk, skb_peek(&pkts), TIPC_DUMP_SK_SNDQ, " ");
 	rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
