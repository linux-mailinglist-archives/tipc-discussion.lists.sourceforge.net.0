Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3093A6F2702
	for <lists+tipc-discussion@lfdr.de>; Sun, 30 Apr 2023 00:41:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pstFT-0003Rd-Ny;
	Sat, 29 Apr 2023 22:40:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1pstFR-0003RW-F8
 for tipc-discussion@lists.sourceforge.net;
 Sat, 29 Apr 2023 22:40:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JdC5vKdhMqXkGLWjKKDVL+KYo0HsVuHVLflZJjoZrwg=; b=QMqtm/NvT7gf4EcCuNAkR+AXXU
 Y/0DWdxq1j8d6AR5QSssbSi9eJ202L1J1Wd2v45OieH34+CIw3MqxNXXGzD10AnkE6xMn3rzBf0vn
 ax8rnWbQO1GAoUtfSrRugwWWZnlLoKx7GYWHZ1OGYzrupVAnuv2pu8LCzrRqpZVJYuyw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JdC5vKdhMqXkGLWjKKDVL+KYo0HsVuHVLflZJjoZrwg=; b=agLc9p5vSnNrSdf65gwirsdsbf
 9cXR20ZZ+ZjL9mEg5m+Y8/OOHQ4M7po/b6bx4pMo6De9Nhue4rfDuP3gPfb61yqmEXl7A6+4U7ec3
 lNWHkCLyA6NrqjMBf1zXSQFqMttBqwvpuNEvrF034ScRr4SjU74iNcfq7oU+tXIQuOWA=;
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pstFP-00004v-U3 for tipc-discussion@lists.sourceforge.net;
 Sat, 29 Apr 2023 22:40:56 +0000
Received: by mail-qk1-f173.google.com with SMTP id
 af79cd13be357-74e13e46cb9so54071985a.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 29 Apr 2023 15:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682808050; x=1685400050;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JdC5vKdhMqXkGLWjKKDVL+KYo0HsVuHVLflZJjoZrwg=;
 b=YXiBSwfGnrtfIbs5qF5CTQZCtt9xbr1H0/JbmQC7BJEyQgcU99obGyojHy6JUp2R/u
 tBNgdD5zbZ3t9A1eWWGVXBu6w56O9yGDl9z34uuvDqDL1Low5RL99SGYpGrzhBMIvSe9
 4pl7f0IbQZhgWRYVETUhG+YQ9WmKNQM8BL/pwl9IwyoKQLpWH/HF8bBfmB8L/ljPUv3R
 M8r/wsUrX0RR+IrlOf7fvgA8+TzybkYahUSxpsUnWah9AS3tYQujUd/BaWIjwQUMmzM0
 5mXOPDfeTce6wi/AGzsCs3r5YiuaQ+eYbGF9hIm0fJfobmJM4Tgi26jLU+te/zq53uj6
 LfVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682808050; x=1685400050;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JdC5vKdhMqXkGLWjKKDVL+KYo0HsVuHVLflZJjoZrwg=;
 b=fkn3lbzO+Ol8+mz2EP6LGtAeoX6xpKrkW3T2FLglQKpQwzbI4sIiKxTLjj2C56jiUb
 +WFmN+GTJnoxe5r5cX+Zv18ur54FK0rHEBZgLYrQnANwfs/Ot9/gS/vymycfdWGWvvZl
 sXqiTdUMFAYAcnUfptdxHX0eixE61CHOAZ68XZcZrQJ3JH5rRl+sMYyzNRj8fLblrvV2
 E3QuvtpUoQWFdmfi75/plB+olnqxlwza+J8MIQ6z0bXEDqCPZPokauYfiLJqMgSryQMh
 lDBK+yo1fEoGMkNirv5XQKGPfHw4vMSANBkau371HHwQ8xUT68Sng1UHWswS8R8AFTmJ
 gJtg==
X-Gm-Message-State: AC+VfDy0YIj/ZOw+SRNpCwohHKUntKAnfPd24qzo257vreH81K24LzTp
 2KSZxGzcp/3DFVgZfTolvrlhOuN4LD4gBQ==
X-Google-Smtp-Source: ACHHUZ5ES7Qmaaz74zXkPwG8lwiiTYkbTaajv2hUYChCNJI1/CEhQS0y+j+h1RU63ImVUgro1yM7aw==
X-Received: by 2002:a05:6214:c4d:b0:61a:9107:bac9 with SMTP id
 r13-20020a0562140c4d00b0061a9107bac9mr51189qvj.33.1682808050063; 
 Sat, 29 Apr 2023 15:40:50 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 p12-20020a0ce18c000000b00606322241b4sm6595741qvl.27.2023.04.29.15.40.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Apr 2023 15:40:49 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sat, 29 Apr 2023 18:40:46 -0400
Message-Id: <b73c0deb97ca299207d2197db28f78d3992fbdbf.1682807958.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1682807958.git.lucien.xin@gmail.com>
References: <cover.1682807958.git.lucien.xin@gmail.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.173 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pstFP-00004v-U3
Subject: [tipc-discussion] [PATCH net 1/2] tipc: add tipc_bearer_min_mtu to
 calculate min mtu
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
Cc: kuba@kernel.org, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

As different media may requires different min mtu, and even the
same media with different net family requires different min mtu,
add tipc_bearer_min_mtu() to calculate min mtu accordingly.

This API will be used to check the new mtu when doing the link
mtu negotiation in the next patch.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c    | 13 +++++++++++++
 net/tipc/bearer.h    |  3 +++
 net/tipc/udp_media.c |  5 +++--
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 35cac7733fd3..c5d2e8c45f88 100644
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
+	b = rcu_dereference(tipc_net(net)->bearer_list[bearer_id]);
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
