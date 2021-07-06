Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BE83BDD0E
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0piX-0005F0-8p; Tue, 06 Jul 2021 18:22:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piV-0005EM-C8
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YQjjZq60UeghfC4iw7sr2oUd24IJuI11o+aJ7+cRybo=; b=Ffa8j82auzfF/SCHC/HlhGzBSr
 ZQHOenuCPrbp6WOMXSgYt6lCAgqI9xVbyC7ZwBQYcsXp/iivzzV1dQ48ivgeJlH0I//J0q40CBtin
 0Pmjoe4ZKBKw6bJ/DDaDheg5JBLUk/zCFF1LR2LT2gxu+urJHCs88skxszrfVnQJVkAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YQjjZq60UeghfC4iw7sr2oUd24IJuI11o+aJ7+cRybo=; b=M4OxgyElZ8CzXGa4Cijpwvp0yy
 89hN3vp+AmvjClN1CDVgcArdLtNRWlW1UhBwgAki6UjKbGz3L9mv71fVBpAMSZ2HaTNmOgf+MTu8d
 EQ1c+fcNjKpD3LrFaUpFknKeC77W54+3srWct7DAZqS1dUJEzWO2Uwa+vbp3oQa9QD+I=;
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piJ-0006tv-RR
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:43 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 j39-20020a05600c1c27b029020028e48b8fso2488631wms.0
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=YQjjZq60UeghfC4iw7sr2oUd24IJuI11o+aJ7+cRybo=;
 b=o0t1PnWp/M8JNL12D6qACmDkNZXKIdtR26YyW2hoMNlX7Q5t5GIqlEqPvDoaYYDaPf
 TL8NwDUvWfpewqNuaqKM9d7xR6ndFn/8WDDJl1qwlcES508t75igupA0kp2PjyJ7WTBu
 H8J4tJvI0W1td3JEUyOtvxz05GwnjjI0AbwrzCM0n4eVKr1ltfwptvjBPnujlB6IBzWQ
 vNhHFLk6qnngKEZsMDO7HrcWDKNtoY53z5z0PpVqtoeRsP6WxgNCC+/8RLasm9BX1hwV
 SOTk/whshbywA5IQJmA5K0CWW4fMXPRcFjFlJeqvCHfYVmd7HxVMKA1UqOl2FGXqitZp
 Sa2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YQjjZq60UeghfC4iw7sr2oUd24IJuI11o+aJ7+cRybo=;
 b=KpIJnSmLXaa9zw4KCufEdzXJre7CK4jmKEXOlBAwPoWPZ6weyYkClpedXAX81oTKY5
 o7IKDpNsabV3Z32CesiEQsmepAHDXbpnQsm0nHounPrmwBOZhcb2WRfgpqYPxTnADaTS
 EqbPSw3BdJc0rVdSOf5iWrKwN1UtIao+dyKei9IbANCZsw0jfFgyJzA0DidRbty0lQpZ
 a41yNuIQ5smr+Ph6RJpa3p4+FN3v91IbBYVuZs69+2H4rIu2P1K9Wf6DitOwzwQLOG+r
 AQ71U+H9B+ZGX8FgtumyIJIouZB4P71y0KvyXtOAY9tOXp0nXDn0hOYkdtzT6W60PzHe
 w/UQ==
X-Gm-Message-State: AOAM533QU6KJww6V4w75pGgxkX03yFg6pPRhihNA0B90qKnOR3a5RYkO
 WqC8ee+84y9EdBrqvJivMkyjYWFVffQe9w==
X-Google-Smtp-Source: ABdhPJwT7Yw2VRirNogVZi/sBok0YDs4vf4dv2PetAz+0Io/DO5vZNwhUgF/pL7jEJzaLUXsFsWpKQ==
X-Received: by 2002:a05:600c:5110:: with SMTP id
 o16mr2341745wms.24.1625595745567; 
 Tue, 06 Jul 2021 11:22:25 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l34sm4378485wms.45.2021.07.06.11.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:25 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:11 -0400
Message-Id: <49e48ff31811b6ccd5a598691a09697f9dbe27e6.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
References: <cover.1625595705.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.45 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piJ-0006tv-RR
Subject: [tipc-discussion] [PATCH net-next 5/8] tipc: add probe recv and
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

This patch is to receive and process the probe ack by checking
msg_max_pkt() == l->pl.probe_size then does state transition
in tipc_link_pl_recv().

For the details, see:

  https://lwn.net/Articles/860385/

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 3af6c04f82c2..241c9378e258 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -293,6 +293,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
 static void tipc_link_update_cwin(struct tipc_link *l, int released,
 				  bool retransmitted);
 static void tipc_link_pl_send(struct tipc_link *l);
+static void tipc_link_pl_recv(struct tipc_link *l);
 /*
  *  Simple non-static link routines (i.e. referenced outside this file)
  */
@@ -2333,6 +2334,13 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 			break;
 		}
 
+		if (!reply && msg_max_pkt(hdr) == l->pl.probe_size) {
+			tipc_link_pl_recv(l);
+			if (l->pl.state == TIPC_PL_COMPLETE)
+				break;
+			tipc_link_build_proto_msg(l, STATE_MSG, PROBE_PLPMTU, 0, 0, 0, 0, xmitq);
+		}
+
 		/* Receive Gap ACK blocks from peer if any */
 		glen = tipc_get_gap_ack_blks(&ga, l, hdr, true);
 
@@ -3061,3 +3069,43 @@ static void tipc_link_pl_send(struct tipc_link *l)
 	}
 	l->pl.count = TIPC_PROBE_INTERVAL;
 }
+
+static void tipc_link_pl_recv(struct tipc_link *l)
+{
+	pr_debug("%s: PLPMTUD: link: %p, state: %d, pmtu: %d, size: %d, high: %d\n",
+		 __func__, l, l->pl.state, l->pl.pmtu, l->pl.probe_size, l->pl.probe_high);
+
+	l->pl.pmtu = l->pl.probe_size;
+	l->pl.count = 0;
+	if (l->pl.state == TIPC_PL_BASE) {
+		l->pl.state = TIPC_PL_SEARCH; /* Base -> Search */
+		l->pl.probe_size += TIPC_PL_BIG_STEP;
+	} else if (l->pl.state == TIPC_PL_ERROR) {
+		l->pl.state = TIPC_PL_SEARCH; /* Error -> Search */
+
+		l->pl.pmtu = l->pl.probe_size;
+		l->mtu = l->pl.pmtu;
+		l->pl.probe_size += TIPC_PL_BIG_STEP;
+	} else if (l->pl.state == TIPC_PL_SEARCH) {
+		if (!l->pl.probe_high) {
+			l->pl.probe_size = min(l->pl.probe_size + TIPC_PL_BIG_STEP,
+					       TIPC_MAX_PLPMTU);
+			return;
+		}
+		l->pl.probe_size += TIPC_PL_MIN_STEP;
+		if (l->pl.probe_size >= l->pl.probe_high) {
+			l->pl.probe_high = 0;
+			l->pl.raise = 0;
+			l->pl.state = TIPC_PL_COMPLETE; /* Search -> Search Complete */
+
+			l->pl.probe_size = l->pl.pmtu;
+			l->mtu = l->pl.pmtu;
+		}
+	} else if (l->pl.state == TIPC_PL_COMPLETE) {
+		l->pl.raise++;
+		if (l->pl.raise == 30) {
+			l->pl.state = TIPC_PL_SEARCH; /* Search Complete -> Search */
+			l->pl.probe_size += TIPC_PL_MIN_STEP;
+		}
+	}
+}
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
