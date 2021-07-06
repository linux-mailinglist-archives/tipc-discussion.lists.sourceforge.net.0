Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 905873BDD0C
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0piN-0005Ca-2T; Tue, 06 Jul 2021 18:22:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piK-0005CD-Td
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hDzf62tCOfntqIVucU+GLd+SnGOZlNw4VN8y4D+jHac=; b=GPXsJcBZNch95t/su/hDGcFlmy
 iBPCAlDD1Tkur2eNahAl6vc7X/b8tVMVYLu4gokY+5OGDgdnB/wcqTSMgOF2r85GP732VuUBHabIy
 nV4Z7Zn4ZbxmB2MI0tAn17dSaQIpeZseZV8n4pfmSbH88AvWXu9sd+S0h01ltopYFVdE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hDzf62tCOfntqIVucU+GLd+SnGOZlNw4VN8y4D+jHac=; b=Lh7q6wVKgz01l8JSUOL7Wc13hB
 WOBTkt74avCvTHwLLaAsltiljKSJ1Uu9/YYV1ByK09965lWLOP8hV4IvyHWR0k9RsXA5QrIdpFb0E
 5Jcdu6GvyP8gFafKkLZGJ6Rs2/icrgQ1R6d649yHaSiJtFekz3clbI1z8IGsvNZKV6Yo=;
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piI-00CboM-5E
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:32 +0000
Received: by mail-wr1-f52.google.com with SMTP id p8so98580wrr.1
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=hDzf62tCOfntqIVucU+GLd+SnGOZlNw4VN8y4D+jHac=;
 b=vQrgdwHjjAhvT74bd5N5amdRc1/ebn1WEpQ9P5ppVhtgP7W/2rq3RALeMPkG0AYie+
 2BQRoB8w7Oj35VSOVf73Ajh/RitH+bpLhrgw7SMQlKdcVowFKsvZNa5WsPMmY0cd5+54
 aXW/wjLwBdPVXutqRtGt7onB70FcNsz6TWFm7wBhBgFAVtQl0Y0bsbHMboCME5Pp18N+
 p2Pze6v+gkX45I4mjj0nUd/wYer9Z/1dCThp7WUf33+SkcHaTDjTdVX46bTtsl2yrGJP
 nekmXkBtjpG0qJiOu7/XkKnI8POthH4qrvgMSOs4yOuJyx8oscj2bG8/c6wUirCbFg60
 Pqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hDzf62tCOfntqIVucU+GLd+SnGOZlNw4VN8y4D+jHac=;
 b=Ld+nQ8WU8Pc92Z0IPR9z/W096ScywolJI8l/WWlKmbT7ij9mbFQ8wzQ6T5zs6bWXcJ
 gpMq5jF/vaiCPQ7wX9+mm2B3njZHHBAh+PCoLJkuWZivk17Hrurs2fBQfEtRMmEHg6IR
 Wy/vXUGgWh8w9L82hh/qKU3v6C3yK0vcSG7CQfi1O/PsvxaDK+YvGp8KnLTZQWh4HLXa
 fBV0vW57fxw5gv5Lzr1wOFs8gL9gHjZWsVUNAbdHSIk+eBvMXrUkknVttiTtMW5WlRyq
 6ECctPm3lOxKAGux2rFUifhQ/8D1QiskCtNWTxUBUAvAgG5D4NmXLqk57xzMFB6OBcKe
 w5ag==
X-Gm-Message-State: AOAM5324xuIPjFbnX3LOsmOrtya2axpb3cCvii2kfFvTsNSHGE+uVqVZ
 sPAmu2vS996kLgNydHT8NRY=
X-Google-Smtp-Source: ABdhPJwLuL+mr2FbkxjlWjMSbuQr3V4101JCHADrfV7W1LTbncgVZHN58zBqHvbR5PdusweLg05ozA==
X-Received: by 2002:a5d:6904:: with SMTP id t4mr23226897wru.20.1625595743752; 
 Tue, 06 Jul 2021 11:22:23 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id c16sm16096983wmr.2.2021.07.06.11.22.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:23 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:10 -0400
Message-Id: <cc6f0b8d8e5b2a5d4c7f04a2a2750b3f353afebd.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
References: <cover.1625595705.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piI-00CboM-5E
Subject: [tipc-discussion] [PATCH net-next 4/8] tipc: add probe send and
 state transition
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

pl.count will make a timer that 'timeout' every after '10 * node timer
interval', where it does state transition in tipc_link_pl_send() and
sends probe in tipc_link_build_proto_msg().

For the details, see:

  https://lwn.net/Articles/860385/

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 414f9cf543ff..3af6c04f82c2 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -292,6 +292,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
 				     bool *retransmitted, int *rc);
 static void tipc_link_update_cwin(struct tipc_link *l, int released,
 				  bool retransmitted);
+static void tipc_link_pl_send(struct tipc_link *l);
 /*
  *  Simple non-static link routines (i.e. referenced outside this file)
  */
@@ -902,6 +903,14 @@ int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmitq)
 	if (state || probe || setup)
 		tipc_link_build_proto_msg(l, mtyp, PROBE_MSTATE, 0, 0, 0, 0, xmitq);
 
+	if (probe && tipc_link_is_up(l)) {
+		l->pl.count++;
+		if (!(l->pl.count % TIPC_PROBE_INTERVAL)) {
+			tipc_link_pl_send(l);
+			tipc_link_build_proto_msg(l, mtyp, PROBE_PLPMTU, 0, 0, 0, 0, xmitq);
+		}
+	}
+
 	return rc;
 }
 
@@ -3013,3 +3022,42 @@ int tipc_link_dump(struct tipc_link *l, u16 dqueues, char *buf)
 
 	return i;
 }
+
+static void tipc_link_pl_send(struct tipc_link *l)
+{
+	pr_debug("%s: PLPMTUD: link: %p, state: %d, pmtu: %d, size: %d, high: %d\n",
+		 __func__, l, l->pl.state, l->pl.pmtu, l->pl.probe_size, l->pl.probe_high);
+
+	if (l->pl.count <= TIPC_MAX_PROBES * TIPC_PROBE_INTERVAL)
+		return;
+
+	if (l->pl.state == TIPC_PL_BASE) {
+		if (l->pl.probe_size == TIPC_BASE_PLPMTU) { /* BASE_PLPMTU Confirmation Failed */
+			l->pl.state = TIPC_PL_ERROR; /* Base -> Error */
+
+			l->pl.pmtu = TIPC_MIN_PLPMTU;
+			l->mtu = l->pl.pmtu;
+		}
+	} else if (l->pl.state == TIPC_PL_SEARCH) {
+		if (l->pl.pmtu == l->pl.probe_size) { /* Black Hole Detected */
+			l->pl.state = TIPC_PL_BASE;  /* Search -> Base */
+			l->pl.probe_size = TIPC_BASE_PLPMTU;
+			l->pl.probe_high = 0;
+
+			l->pl.pmtu = TIPC_BASE_PLPMTU;
+			l->mtu = l->pl.pmtu;
+		} else { /* Normal probe failure. */
+			l->pl.probe_high = l->pl.probe_size;
+			l->pl.probe_size = l->pl.pmtu;
+		}
+	} else if (l->pl.state == TIPC_PL_COMPLETE) {
+		if (l->pl.pmtu == l->pl.probe_size) { /* Black Hole Detected */
+			l->pl.state = TIPC_PL_BASE;  /* Search Complete -> Base */
+			l->pl.probe_size = TIPC_BASE_PLPMTU;
+
+			l->pl.pmtu = TIPC_BASE_PLPMTU;
+			l->mtu = l->pl.pmtu;
+		}
+	}
+	l->pl.count = TIPC_PROBE_INTERVAL;
+}
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
