Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EBB6F4CD1
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 00:13:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptyFW-0000Ue-J0;
	Tue, 02 May 2023 22:13:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptyFU-0000UX-0n
 for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BQTKNZUjF1tZVGzsl9hQectj2Dnc9g2sG5AnMqu9CLU=; b=anStnKX5F22A7IekZaDQMiRnKb
 XdGD1d0En1z/nM7S7bzkv8zHNBguHxRsIYBV+EF1lcwxKJvEbg04AAtJpBnmpRnoJkVhAIPzwg2dF
 6zRch+lbX7BzxD77V80R3M5UhiCxBhOEhjE3llYle+T7JqYkDXIWXTaoLJ34CwY0Ikbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BQTKNZUjF1tZVGzsl9hQectj2Dnc9g2sG5AnMqu9CLU=; b=eIGucpmE0pt6G5KdnBs9EnLXqe
 qAqUKx5F7WMq1IIq4J60Ph4EECSaivGu40J+hs3gutKllZ794OxXIKpltHKzDDwXjQby2+0VmdBt/
 G72+JbCgya7FEwzwb5lBb2exleDCzQAgd/2j/kR5lyrUAAOgsYZAsUI41+Mvw9rHQX20=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptyFQ-0001e4-4m for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:28 +0000
Received: by mail-qt1-f180.google.com with SMTP id
 d75a77b69052e-3eab1f2ba18so20876851cf.0
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 02 May 2023 15:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683065598; x=1685657598;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BQTKNZUjF1tZVGzsl9hQectj2Dnc9g2sG5AnMqu9CLU=;
 b=OWbTSLdBEIonx0WubXyoi68LxibN9qqiIEq18zR0SPzGf2GpXzGG0ioTvwRGXyOI4j
 9OnN8CvG8lJNmsuvRrUOGcXDdrbWz3Cu9Ra1eEKgDXQoOBmzpLsIo4wxU9m9fde1dHud
 3/cn/uwGw7uSb6XMjKVikXPDe4guIZj2M1mS9++QwM/9/5RKJN6tKRrr05gZPsRST4cJ
 baUuSYN2p2RrP8uSva73CPahgmNOGjQX9LJWnyDMPrHk+xvliaKe1X2LTFGZIqZDKSX4
 YNcdh/5Kap20KdMs2uaDWYORDqN77uSGBO5enEo0yzbzojzRVQ8e9ln/hoBoh+qXuJA0
 RSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683065598; x=1685657598;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BQTKNZUjF1tZVGzsl9hQectj2Dnc9g2sG5AnMqu9CLU=;
 b=ItNG1SLZ1augKevZoTUEI8RHCkGuu0hRTYSp1AbwK+oySeAMLlrAHb3hcLBSvW+chC
 VFsXnz++OAwPeQHUqqIOumnTFUG6DOFD46F4B/B5mxCiXXmIuQYtakbcIhvkJixUzKru
 YhDUgpt8PH6NxEDIqlx1a9oywOyLPtGuA47rELOjw/i64g/MyzN8rwkNzxwB+k3HOM1W
 g2IAB4enl0i9FSK6TAabEUzhhBxcol4q7fUpjYBgL+jHmBQV8gCC/NIU9DJ3RRiksGns
 KrW8nQdLkRPHFOlemrdOh8OD37jQcJ1Js2LOgeY1/9rV83QPFKhnoQgy5vCmV5hJx7TX
 EhEw==
X-Gm-Message-State: AC+VfDxVz3oSncIv0iSP5EYLqNgJWm7jyZnSqrBDd7jZ2a4/AKYm9PTc
 q41q+zIzmVAMFfg6lz/qtGk=
X-Google-Smtp-Source: ACHHUZ63BGMHjXiAVrHuMCc/6e/tbSB08gjIepr2ta3bWxOPFfmtg7lmb9Pgh+bQz+w9NyidI9l+mg==
X-Received: by 2002:ac8:7f0c:0:b0:3ef:5221:5710 with SMTP id
 f12-20020ac87f0c000000b003ef52215710mr29353666qtk.47.1683065598281; 
 Tue, 02 May 2023 15:13:18 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 cf23-20020a05622a401700b003ef58044a4bsm10362636qtb.34.2023.05.02.15.13.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 May 2023 15:13:17 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue,  2 May 2023 18:13:13 -0400
Message-Id: <8e3827ffaf71c0636541c01f76ff3a65868433ea.1683065352.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1683065352.git.lucien.xin@gmail.com>
References: <cover.1683065352.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As different media may requires different min mtu, and even
 the same media with different net family requires different min mtu, add
 tipc_bearer_min_mtu() to calculate min mtu accordingly. This API will be used
 to check the new mtu when doing the link mtu negotiation in the next patch.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.180 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ptyFQ-0001e4-4m
Subject: [tipc-discussion] [PATCHv2 net 1/3] tipc: add tipc_bearer_min_mtu
 to calculate min mtu
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

As different media may requires different min mtu, and even the
same media with different net family requires different min mtu,
add tipc_bearer_min_mtu() to calculate min mtu accordingly.

This API will be used to check the new mtu when doing the link
mtu negotiation in the next patch.

v1->v2:
 - use bearer_get() to avoid the open code.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c    | 13 +++++++++++++
 net/tipc/bearer.h    |  3 +++
 net/tipc/udp_media.c |  5 +++--
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 35cac7733fd3..0e9a29e1536b 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -541,6 +541,19 @@ int tipc_bearer_mtu(struct net *net, u32 bearer_id)
 	return mtu;
 }
 
+int tipc_bearer_min_mtu(struct net *net, u32 bearer_id)
+{
+	int mtu = TIPC_MIN_BEARER_MTU;
+	struct tipc_bearer *b;
+
+	rcu_read_lock();
+	b = bearer_get(net, bearer_id);
+	if (b)
+		mtu += b->encap_hlen;
+	rcu_read_unlock();
+	return mtu;
+}
+
 /* tipc_bearer_xmit_skb - sends buffer to destination over bearer
  */
 void tipc_bearer_xmit_skb(struct net *net, u32 bearer_id,
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index 490ad6e5f7a3..bd0cc5c287ef 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -146,6 +146,7 @@ struct tipc_media {
  * @identity: array index of this bearer within TIPC bearer array
  * @disc: ptr to link setup request
  * @net_plane: network plane ('A' through 'H') currently associated with bearer
+ * @encap_hlen: encap headers length
  * @up: bearer up flag (bit 0)
  * @refcnt: tipc_bearer reference counter
  *
@@ -170,6 +171,7 @@ struct tipc_bearer {
 	u32 identity;
 	struct tipc_discoverer *disc;
 	char net_plane;
+	u16 encap_hlen;
 	unsigned long up;
 	refcount_t refcnt;
 };
@@ -232,6 +234,7 @@ int tipc_bearer_setup(void);
 void tipc_bearer_cleanup(void);
 void tipc_bearer_stop(struct net *net);
 int tipc_bearer_mtu(struct net *net, u32 bearer_id);
+int tipc_bearer_min_mtu(struct net *net, u32 bearer_id);
 bool tipc_bearer_bcast_support(struct net *net, u32 bearer_id);
 void tipc_bearer_xmit_skb(struct net *net, u32 bearer_id,
 			  struct sk_buff *skb,
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index c2bb818704c8..0a85244fd618 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -738,8 +738,8 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 			udp_conf.local_ip.s_addr = local.ipv4.s_addr;
 		udp_conf.use_udp_checksums = false;
 		ub->ifindex = dev->ifindex;
-		if (tipc_mtu_bad(dev, sizeof(struct iphdr) +
-				      sizeof(struct udphdr))) {
+		b->encap_hlen = sizeof(struct iphdr) + sizeof(struct udphdr);
+		if (tipc_mtu_bad(dev, b->encap_hlen)) {
 			err = -EINVAL;
 			goto err;
 		}
@@ -760,6 +760,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 		else
 			udp_conf.local_ip6 = local.ipv6;
 		ub->ifindex = dev->ifindex;
+		b->encap_hlen = sizeof(struct ipv6hdr) + sizeof(struct udphdr);
 		b->mtu = 1280;
 #endif
 	} else {
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
