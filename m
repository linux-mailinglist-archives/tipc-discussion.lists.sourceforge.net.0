Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95022701F51
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 May 2023 21:52:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pyHlp-0006Gy-KP;
	Sun, 14 May 2023 19:52:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1pyHln-0006Gm-N0
 for tipc-discussion@lists.sourceforge.net;
 Sun, 14 May 2023 19:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N2YNf79EHZ/wWVYoLYruhucyvo6J0n3PYGo32c70cl8=; b=UJ4cxlByYK3xpXVHABDUfOFvyn
 kum4mYubn0jksookm+WrrSCig+C+41B5LyAZiybNZTe1MwdCjId3v5OKlZoR3gbyQiw6qX90cwGoN
 8i4WJhyalbEZjg7GSx/5X/8mfVsYnxUKhiHNWexvbjGLY3oM1VSdagdylWAqKgwu1CPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N2YNf79EHZ/wWVYoLYruhucyvo6J0n3PYGo32c70cl8=; b=lZp/CRORpmdvSfD3xsOIUASQbw
 Ev/vRaSKDERUGksEt27YVRgHDd5CB631/OmnuseKuGuzVpq0ZwrJlyJ6opCk14UTsWjmUxt6mAy01
 naSeONrcroshLC9vt8p997kT0RdRU3In47wtKMc7tB/Eh5/tZq3vhg9ke6iCPQvUrAqA=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pyHln-0005hQ-0R for tipc-discussion@lists.sourceforge.net;
 Sun, 14 May 2023 19:52:39 +0000
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-7590aa05af6so426693585a.0
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 May 2023 12:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684093952; x=1686685952;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=N2YNf79EHZ/wWVYoLYruhucyvo6J0n3PYGo32c70cl8=;
 b=I76ZJyyjVOjLuaPIid/NIl3DuaVtujV5dgh9xjm1ui12zreo28ge11Zex/iCjqYYLK
 A6EYAQEK2EX/b4ruY/Xb3Fvxp4cL/6nHm72Xl0pnlAimsY2OpeuHuzaXRnsFGQAuyXcb
 4BAEV4f2YcxbAzW57TpQeK0PgKZ8gUxWEN7NstA0HEfb9/aDL0MnhxmBx8Kcc0dx1qhu
 5wcBK0y2uAGfCLEbuts8d1ud8/sXTlr7MtOLGE1kAWp9R+veatEEH2sk3D6b3howGMLo
 /CgV9nbZ5DoCwDtMln9tRVwaE2NkTeFDlQ067wfQN0RYsKa29OSl1pGfFFuuTvFV8LNQ
 LbOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684093952; x=1686685952;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=N2YNf79EHZ/wWVYoLYruhucyvo6J0n3PYGo32c70cl8=;
 b=AefkYd6CD530tzwC2uQB2Xn9ek/pkRv6SNyCWOPRmw2m9zyEJjQAoB3QUKMeO5jwXO
 fh4lrX9ouMDwqTDLPUD8wW4Xo5GgBstQBx4emYHS7Kh7p8NvTzBDI4oSVcvgF0SMR+UU
 kqP5Z7w2iGOpIl6qxeG01jBYBuKNbbyg/wJdiFotENHExSiSb8mQEpcog52K/mRde62N
 l/f+UMcj3f0e9K/vH1X7UZtj9cf3Gkwdt5rdKd86bkboE1uiJNHjcvysOIHJMsk3P0CO
 pNTSeGHm6Gb1FAvOvlG8LTGr0WLccB+eufov8ymksFX6AauRCZXqQvm4TedQRtopUNPI
 MvMQ==
X-Gm-Message-State: AC+VfDxsjqncdDtDtjrFOUVor9YWbmHjqrVV3nhguu1izoYls5HIHYFk
 rGn1LNtSIKhmqEU1eQQ/jXA=
X-Google-Smtp-Source: ACHHUZ4j4WTwa7ZaOAUJ0hHBs0VrbljPC857FzHqp1V/spauKkMqN2byGgcoH8QYOgVH5o0UZuIXbQ==
X-Received: by 2002:a05:622a:4d2:b0:3f4:dec2:76cc with SMTP id
 q18-20020a05622a04d200b003f4dec276ccmr27493816qtx.49.1684093952289; 
 Sun, 14 May 2023 12:52:32 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 fa11-20020a05622a4ccb00b003f517e1fed2sm1069444qtb.15.2023.05.14.12.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 May 2023 12:52:31 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sun, 14 May 2023 15:52:27 -0400
Message-Id: <580bc5fa36dd1454a5c111e5490907521d63d060.1684093873.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1684093873.git.lucien.xin@gmail.com>
References: <cover.1684093873.git.lucien.xin@gmail.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pyHln-0005hQ-0R
Subject: [tipc-discussion] [PATCHv3 net 1/3] tipc: add tipc_bearer_min_mtu
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

Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
v2:
- use bearer_get() to avoid the open code.
v3:
- move the change history under ---, as Tung suggested.
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
