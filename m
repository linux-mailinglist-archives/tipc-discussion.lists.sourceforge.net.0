Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F4105E9AF1
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Oct 2019 12:40:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPmL2-0005Zz-4a; Wed, 30 Oct 2019 11:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iPmL0-0005Zg-9T
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 11:40:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PwHQozpnl0UMRzByWEaS6JfgyD6opufsQ1BdMBAhnXk=; b=MG5VyOT04NM1tU61HMTkzh+/P7
 u4tCxCPLa0oZ+yPr1e9soN70eItTuj39njju7Wk+DuoFGZBY8i7jXkAqN9fx8on0OWu42LWEVxE8+
 LSU3ElTC+ANzH0tLmMXuvjONd+5Rl7GkIRajtHhEuj4k4RbJHdf1gNF8zT1fBHnRaN5s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PwHQozpnl0UMRzByWEaS6JfgyD6opufsQ1BdMBAhnXk=; b=c64ks8Sa7gkydpX0m6OQT9nGsR
 NxJmD3HBQeLc8o9IBemLZV4Vb8gyatAYYHM5aCNlZQzj3Dmr49mMpt4mxaq7sFV247PbtqrYuW9+S
 ETHZN80oqmucQQZaBP+o+h+iAz5RUgRTeo31v0xl2KZsTt0SJgPdtl+FgY38+xGeOhVI=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPmKw-008c74-FZ
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 11:40:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id D39534A556;
 Wed, 30 Oct 2019 22:40:11 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1572435611; bh=YvvW3OZxc3j1AX
 eXrMu6ODVyQuAgZHUMyf97tJAFCxk=; b=g1l1sb9V/swQzH1SdS0CvRwXcAp2D7
 yMbMnQpzoZv7mAhULHHKSRNcAlKblkCPTEDD6V0QbmjY0SRNHxAmNOZHcDq+8L6P
 wRRBX+lCO0iVqCMyqjrrIV5pCH0fraw4HWUdL7FqazudjaMJuvp/dA9XtcMRTZKj
 Rgb7LJsHQeaUI=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dG37gcjQHp6x; Wed, 30 Oct 2019 22:40:11 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 819A04A552;
 Wed, 30 Oct 2019 22:40:11 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 1ACD44A556;
 Wed, 30 Oct 2019 22:40:09 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, "'Jon Maloy'" <maloy@donjonn.com>
References: <1572379899-11198-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1572379899-11198-1-git-send-email-jon.maloy@ericsson.com>
Date: Wed, 30 Oct 2019 18:38:48 +0700
Message-ID: <076a01d58f16$9a1f4250$ce5dc6f0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQElBoWAHocE9IjFJtbQNAtt98KdcqjUHNDg
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iPmKw-008c74-FZ
Subject: Re: [tipc-discussion] [net-next v3 1/1] tipc: add smart nagle
 feature
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
Cc: tipc-discussion@lists.sourceforge.net,
 mohan.krishna.ghanta.krishnamurthy@ericsson.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Please see below one comment from my side.

BR/Tuong

@@ -1437,16 +1492,17 @@ static int __tipc_sendstream(struct socket *sock,
struct msghdr *m, size_t dlen)
 	struct sock *sk = sock->sk;
 	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
 	long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
+	struct sk_buff_head *txq = &sk->sk_write_queue;
 	struct tipc_sock *tsk = tipc_sk(sk);
 	struct tipc_msg *hdr = &tsk->phdr;
 	struct net *net = sock_net(sk);
-	struct sk_buff_head pkts;
 	u32 dnode = tsk_peer_node(tsk);
+	int blocks = tsk->snd_backlog;
+	int maxnagle = tsk->maxnagle;
+	int maxpkt = tsk->max_pkt;
 	int send, sent = 0;
 	int rc = 0;
 
-	__skb_queue_head_init(&pkts);
-
 	if (unlikely(dlen > INT_MAX))
 		return -EMSGSIZE;
 
@@ -1467,21 +1523,35 @@ static int __tipc_sendstream(struct socket *sock,
struct msghdr *m, size_t dlen)
 					 tipc_sk_connected(sk)));
 		if (unlikely(rc))
 			break;
-
 		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
-		rc = tipc_msg_build(hdr, m, sent, send, tsk->max_pkt,
&pkts);
-		if (unlikely(rc != send))
-			break;
 
-		trace_tipc_sk_sendstream(sk, skb_peek(&pkts),

[Tuong]: Should we set the 'blocks' here instead i.e. blocks =
tsk->snd_backlog' as it can be changed if we have to release the sock &
sleep in advance (e.g. tipc_wait_for_cond), also the 'while' statement can
be re-run?

+		if (tsk->oneway++ >= 4 && send <= maxnagle) {
+			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
+			if (rc < 0)
+				break;
+			blocks += rc;
+			if (blocks <= 64 && tsk->expect_ack) {
+				tsk->snd_backlog = blocks;
+				sent += send;
+				break;
+			}
+			tsk->expect_ack = true;
+		} else {
+			rc = tipc_msg_build(hdr, m, sent, send, maxpkt,
txq);
+			if (unlikely(rc != send))
+				break;
+			blocks += tsk_inc(tsk, send + MIN_H_SIZE);
+		}
+		trace_tipc_sk_sendstream(sk, skb_peek(txq),
 					 TIPC_DUMP_SK_SNDQ, " ");
-		rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
+		rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
 		if (unlikely(rc == -ELINKCONG)) {
 			tsk->cong_link_cnt = 1;
 			rc = 0;
 		}
 		if (likely(!rc)) {
-			tsk->snt_unacked += tsk_inc(tsk, send + MIN_H_SIZE);
+			tsk->snt_unacked += blocks;
+			tsk->snd_backlog = 0;
 			sent += send;
 		}
 	} while (sent < dlen && !rc);
@@ -1528,6 +1598,7 @@ static void tipc_sk_finish_conn(struct tipc_sock *tsk,
u32 peer_port,
 	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
 	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
