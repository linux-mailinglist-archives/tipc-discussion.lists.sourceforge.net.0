Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB7F1815E7
	for <lists+tipc-discussion@lfdr.de>; Wed, 11 Mar 2020 11:34:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jBygp-0005ZJ-DA; Wed, 11 Mar 2020 10:34:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jBygo-0005Yv-2F
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Mar 2020 10:34:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AaxdyI9mSGxeSnVaavTyTDXzFWqrQMwNI8NfkcGJQTI=; b=SuJIgGpY7MYUg7SWNJkVhA+476
 h/jySJ+DT664JwWTZ5gT5RgcPQzeAnE4oDkZi3nnGtPVzIEdGf4tRgD5HXw08SGGuQGAferzn0r3D
 Rp24FBMA7ZrbY9aJ0S4LScYL0ZUalK/T1AgWJm65ZTtH7k5vpA9P1GdQ/e4gb9SBKeN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AaxdyI9mSGxeSnVaavTyTDXzFWqrQMwNI8NfkcGJQTI=; b=Vamlo5i53YpTBswa2DxtZz2jp7
 CoJEu4lL0/tx+jdGH9qiB3LzhaemlDlGJ6hwE2a03V324YTF3jtf918bPQzSNsx2CDRt6Z/Q4juEM
 IbSkE16MPCwwkDBKN5hXS+Fy2R6f9SqchuJDOJbR+qcndaDcm9SvTSksibf9EWdITnF4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jBygk-004euD-Cm
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Mar 2020 10:34:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id CC7A44B098;
 Wed, 11 Mar 2020 21:34:02 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1583922842; bh=t7yb8kidebXGZt
 uth8Lo0guzmFcNcdTf5pVKCg0hOTc=; b=mCsO4x7IopG760ImBTHnnSL1jOIpwj
 4PAri9lLScu63jLp11wJ5kYF3d90vo4Tk+AIbrovIV5jWBWQ/QIY8bhBsGDn8N/Q
 v17RZ7cLfQl1kiCMDoCJN1BORY6bwTAyx71TOXUZmjXDTogt0mb/PUy292ZP/2co
 xf9ZVLl8K69qw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rcTSVeq5zVe2; Wed, 11 Mar 2020 21:34:02 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 866D34D73D;
 Wed, 11 Mar 2020 21:34:02 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id DD1524B098;
 Wed, 11 Mar 2020 21:34:01 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: <tipc-discussion@lists.sourceforge.net>, "'Jon Maloy'" <jmaloy@redhat.com>
References: <1582098115-29092-1-git-send-email-tuong.t.lien@dektech.com.au>
In-Reply-To: <1582098115-29092-1-git-send-email-tuong.t.lien@dektech.com.au>
Date: Wed, 11 Mar 2020 17:34:00 +0700
Message-ID: <2ab401d5f790$94dde8e0$be99baa0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFV7MOnhZ6x+tHGh9hgdwg+h8hsCqlDR2NQ
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jBygk-004euD-Cm
Subject: [tipc-discussion] FW: [PATCH] ptts: fix tipcTS failure in case of
 latency
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

Resend this... It seemed to be dropped somehow...

BR/Tuong

-----Original Message-----
From: Tuong Lien <tuong.t.lien@dektech.com.au> 
Sent: Wednesday, February 19, 2020 2:42 PM
To: tipc-discussion@lists.sourceforge.net; jmaloy@redhat.com
Cc: tipc-dek@dektech.com.au; Tuong Lien <tuong.t.lien@dektech.com.au>
Subject: [PATCH] ptts: fix tipcTS failure in case of latency

The 'ptts' test keeps failed when testing under high traffic with some
network latency. This is because the 'tipcTS' server side doesn't wait
long enough at its 'select()' call, just 1s+ and gets timeout. The
time variable is also not re-initiated after the 1st timeout, so the
next attempts just return shortly i.e. timeout = 0:

./tipcTS -v
...
Received on 0 sockets in subtest 6, expected 2
Received on 0 sockets in subtest 6, expected 2
Received on 0 sockets in subtest 6, expected 2
===>Finished SubTest 7: received 0 msgs of sz -1 at 2 sockets (40 per
socket)
TEST FAILED Received wrong number of multicast messages

The commit fixes the issue by increasing the timeout value to 3s and also
re-initiating it correctly.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 test/ptts/tipc_ts_server.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/ptts/tipc_ts_server.c b/test/ptts/tipc_ts_server.c
index 3a2f96f..e102c94 100644
--- a/test/ptts/tipc_ts_server.c
+++ b/test/ptts/tipc_ts_server.c
@@ -610,7 +610,7 @@ void server_mcast
 		rcvbuf = malloc(66000);
 	buf = rcvbuf;
 	recvSyncTIPC (TS_SYNC_ID_3);	/* wait for client to tell us to
start */
-	timeout.tv_sec  = 1;
+	timeout.tv_sec  = 3;
 	timeout.tv_usec = 0;
 	dbg1("===>Starting SubTest %d\n", st);
 
@@ -625,12 +625,12 @@ void server_mcast
 		while (sk_cnt < exp_sks ) {
 			fds = *readfds;			
 			num_ready = select(FD_SETSIZE, &fds, NULL, NULL,
&timeout);
+			timeout.tv_sec  = 3;
 			if (!num_ready) {
 				printf("Received on %u sockets in subtest
%u, expected %u\n",
 				       sk_cnt, st, exp_num[numSubTest]);
 				break;
 			}
-			timeout.tv_sec  = 1;
 			for (i = 0; i < TIPC_MCAST_SOCKETS; i++) {
 				
 				if(!FD_ISSET(sd[i], &fds))
-- 
2.1.4




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
