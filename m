Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDD9349630
	for <lists+tipc-discussion@lfdr.de>; Thu, 25 Mar 2021 16:56:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPSLj-0005MA-Fp; Thu, 25 Mar 2021 15:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lPSLh-0005M3-Qr
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 15:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T52l3QomMlvCDZRMfaPA/DOdY/y/D9tW3asOlNnh8Jg=; b=bHqB2kG9yzQmYMWjGO4RZ2LO9U
 7pEOmKlLEYRUEeEgrpQzuqOEuGjljFhoEDz4U7XxfiwQO8Uj1bA2nCRTfFvg+oCu8xAQXTqTGgI2L
 0AMOEIzJJDIep+zZZaA/ZEz+DXHQ2FFszZUlL062/58PWh5ilaPeWJMgMoplcsIOCzEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T52l3QomMlvCDZRMfaPA/DOdY/y/D9tW3asOlNnh8Jg=; b=jSSdbR9PIl1MugblXlXKEfML6J
 N1m5/mANzq1yYhANT+KpnHKveVKopdUfW9cSKp9jYC3x0LQa2tJKKNhAt74ZScQgz3MJJ5xTgACwX
 VGehGR0rHCKP7nM6ydkNypNnYJoVLP6NNoLL+jAjGqHQWoELBN8NgEGrdHNCZMb1EOxY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lPSLc-00AHEH-Ci
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 15:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616687790;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T52l3QomMlvCDZRMfaPA/DOdY/y/D9tW3asOlNnh8Jg=;
 b=aLs5paDbkIqXfhLgq+A86kob+Lb/FyM+REsIieuHECGa1WMDQvC2dIBRfmvwpZox/R7GE2
 EJPLoVqvEMfMumDskcmLFTg70l+3NgBB1ULCbHEC+zlEmVOqXcGuVnQWRFqJZ82bUKVZao
 LJg++GVdVODSFlpJ87wP8ejNyeY6Wz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-fCPa-3oTMN-1yHn7XNCHdg-1; Thu, 25 Mar 2021 11:56:28 -0400
X-MC-Unique: fCPa-3oTMN-1yHn7XNCHdg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A94018C89E5;
 Thu, 25 Mar 2021 15:56:27 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6152B60D01;
 Thu, 25 Mar 2021 15:56:25 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Thu, 25 Mar 2021 11:56:18 -0400
Message-Id: <20210325155621.2055206-2-jmaloy@redhat.com>
In-Reply-To: <20210325155621.2055206-1-jmaloy@redhat.com>
References: <20210325155621.2055206-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lPSLc-00AHEH-Ci
Subject: [tipc-discussion] [net-next 1/4] tipc: fix htmldoc and smatch
 warnings
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
Cc: lxin@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We fix a warning from the htmldoc tool and an indentation error reported
by smatch. There are no functional changes in this commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 2 +-
 net/tipc/subscr.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 117a472a8e61..f21162aa0cf7 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1450,7 +1450,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		ua = (struct tipc_uaddr *)&tsk->peer;
 		if (!syn && ua->family != AF_TIPC)
 			return -EDESTADDRREQ;
-		 atype = ua->addrtype;
+		atype = ua->addrtype;
 	}
 
 	if (unlikely(syn)) {
diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
index ddea6554ec46..60b877531b66 100644
--- a/net/tipc/subscr.h
+++ b/net/tipc/subscr.h
@@ -49,12 +49,13 @@ struct tipc_conn;
 
 /**
  * struct tipc_subscription - TIPC network topology subscription object
+ * @s: host-endian copy of the user subscription
+ * @evt: template for events generated by subscription
  * @kref: reference count for this subscription
  * @net: network namespace associated with subscription
  * @timer: timer governing subscription duration (optional)
  * @service_list: adjacent subscriptions in name sequence's subscription list
  * @sub_list: adjacent subscriptions in subscriber's subscription list
- * @evt: template for events generated by subscription
  * @conid: connection identifier of topology server
  * @inactive: true if this subscription is inactive
  * @lock: serialize up/down and timer events
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
