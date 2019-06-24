Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6497050428
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 10:03:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfJwE-0007Bj-Fa; Mon, 24 Jun 2019 08:02:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hfJwD-0007Bb-Sf
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 08:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gjjkMzy6A41VXqPTP4CSrqpKlj8XA3AYSw45WND1GM4=; b=g2eiXM3rI0TupYAMhjopYWRl+D
 dBcBCXNydizQvpOTsNuAnv3U6zjSXTuWoIl+cxWihrmeWCOEPiUVSnd+iE8M3DZYdqCniWvwrF+rF
 SuyDLeFqjtqTNiRGsc9yn4h0l37VR/sJeDnYmcYK6dIqEmbf3z1zYGiOARfZxWJNGSx0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gjjkMzy6A41VXqPTP4CSrqpKlj8XA3AYSw45WND1GM4=; b=EP6cfByd6zjyIkfOvz9NtAP8SY
 udTCxBmDKpTe8vCDZr/Zt8YCzk/iRgiorTK+xPvGT8rh8eD0pN99HNImKzBIiS1gb5vnnUr4lXKnZ
 am9EhpSzQXDaK1MtYImoqdQqqh9fYyS1J7N0gyW/L4pnDrCUMnit+OY67XKOrvullPoM=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfJwI-00BOzY-3C
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 08:02:59 +0000
Received: by mail-pg1-f194.google.com with SMTP id p10so6693873pgn.1
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 24 Jun 2019 01:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gjjkMzy6A41VXqPTP4CSrqpKlj8XA3AYSw45WND1GM4=;
 b=j3H5rDNT4w3jzfQ6jTRt5S9Cbq0mo6zCZXiFJG1TjuRy063D0DG3g83vWOnv9p8mEf
 PwXGJ2S+Z2v+USBy7KjVIw3pbdREcQGItg1yTakNuNgavVTi0DkQq5wpvsM73D7SouaX
 gv0oLWmRLjP2HJ++6hGzlnvNrYqNX60719XdSUm2E1l1mTNJ9NH8EjTe9plUAU+DXm/1
 EgeemWWs9Pht/r9UlMzADz0qERr6W47z4k/z59VNhPG+b1pYsNCMmQnKcv7qUiTqo7Ma
 Kl7kfeBMT3KtQW0BFeMoDLeTV0gCul6bXCBDvBolE0yhR13JLIVQw74VR/sZl4YXcZhv
 ++PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gjjkMzy6A41VXqPTP4CSrqpKlj8XA3AYSw45WND1GM4=;
 b=SVRNceNQhoOX+dGZngKEbP/ndoGnsVzvYNJ2Wq0Nmypoxq0/zP8yjtkVlVTQr/Ik86
 nl1f2GfFJjwukAxWGhz0LWuMg8QWkqAy4pzEwQOpPVazxL8BeURBNtpAjmm5VjSBE57f
 +CGJY3LVHydyn6dLboGCGweHDR8qkX6BXMN+4VX1ycJaULbFjzVFUZfbp6FG7NDLrbj6
 KiDas+DUU8VQefJJnbxC3KVNf+Ht+Bo2tTFQLoGlfU5ODV5zUzrJbqeocu63qg192BQn
 j0Qn2Ga1p1STLPR33pMXUu2GkRWtVG0guA3SdShLaXyWDlH5XWuuECmVvl8vL5p08C3E
 ud3w==
X-Gm-Message-State: APjAAAX5ufB6gLFTLvKlXDvgxCJcrDOo/N4mgC3nHwYZxCymkz4qn3nB
 QVo+pxo9H/SBHmRn+92SCcM=
X-Google-Smtp-Source: APXvYqy4chI077h/TuiIBBgAhAqeM/hkJT1iDGOvyOmdF0v5PixxUv5PfZaqJqMqMIcBBwsL9+tueA==
X-Received: by 2002:a63:3547:: with SMTP id c68mr23698673pga.428.1561363370587; 
 Mon, 24 Jun 2019 01:02:50 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id g62sm7762931pje.11.2019.06.24.01.02.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 01:02:49 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Mon, 24 Jun 2019 16:02:42 +0800
Message-Id: <a4f39065f0b1cb13da2159339c08d78cb61f88d9.1561363362.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfJwI-00BOzY-3C
Subject: [tipc-discussion] [PATCH net] tipc: remove the unnecessary msg->req
 check from tipc_nl_compat_bearer_set
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
Cc: tipc-discussion@lists.sourceforge.net, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

tipc_nl_compat_bearer_set() is only called by tipc_nl_compat_link_set()
which already does the check for msg->req check, so remove it from
tipc_nl_compat_bearer_set(), and do the same in tipc_nl_compat_media_set().

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/netlink_compat.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index cf15506..d86030e 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -691,7 +691,6 @@ static int tipc_nl_compat_media_set(struct sk_buff *skb,
 	struct nlattr *prop;
 	struct nlattr *media;
 	struct tipc_link_config *lc;
-	int len;
 
 	lc = (struct tipc_link_config *)TLV_DATA(msg->req);
 
@@ -699,10 +698,6 @@ static int tipc_nl_compat_media_set(struct sk_buff *skb,
 	if (!media)
 		return -EMSGSIZE;
 
-	len = min_t(int, TLV_GET_DATA_LEN(msg->req), TIPC_MAX_MEDIA_NAME);
-	if (!string_is_valid(lc->name, len))
-		return -EINVAL;
-
 	if (nla_put_string(skb, TIPC_NLA_MEDIA_NAME, lc->name))
 		return -EMSGSIZE;
 
@@ -723,7 +718,6 @@ static int tipc_nl_compat_bearer_set(struct sk_buff *skb,
 	struct nlattr *prop;
 	struct nlattr *bearer;
 	struct tipc_link_config *lc;
-	int len;
 
 	lc = (struct tipc_link_config *)TLV_DATA(msg->req);
 
@@ -731,10 +725,6 @@ static int tipc_nl_compat_bearer_set(struct sk_buff *skb,
 	if (!bearer)
 		return -EMSGSIZE;
 
-	len = min_t(int, TLV_GET_DATA_LEN(msg->req), TIPC_MAX_MEDIA_NAME);
-	if (!string_is_valid(lc->name, len))
-		return -EINVAL;
-
 	if (nla_put_string(skb, TIPC_NLA_BEARER_NAME, lc->name))
 		return -EMSGSIZE;
 
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
