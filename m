Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A9B245C7E
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Aug 2020 08:31:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7Yfj-00025C-PJ; Mon, 17 Aug 2020 06:31:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k7Yfi-000252-NR
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 06:31:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O8SkNeQ2iRC9AK8HGkt8A/EddL3/LkAQz0+EJ/G5Pko=; b=c+1ocDbUEeCDSica7zmCpa6sSc
 vycSAwtOe8PAfJwoYGEAs0vs5XpHje3yt3H3qa2RyDCYXCyVsAuZnoi8avdoZ+ate44j7OaM0G7/J
 VD5kGH1MazQlNrkklC/IV6Xcn9eiakxWj6Vd3NFFj/1UsDKVBGeZG3GM71osNXpu10UU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O8SkNeQ2iRC9AK8HGkt8A/EddL3/LkAQz0+EJ/G5Pko=; b=cf+cpqUwbKa8yaXK4UH5kR+IwJ
 TxdLoTiPsBVbxEXEDLJrGFp4eXOX57nwNXKsngocp77nzcIvr30vBgErmjt8cvdS3jyDFsKZ/B+8H
 w/Sf7VlZrqY5Q+C9l6b5xxJx+BocLUUO9fVYwdgrGzPqCfWYx1PQYNoDuts0dTcGyyn8=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7Yff-00DzyB-6B
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 06:31:06 +0000
Received: by mail-pg1-f193.google.com with SMTP id d19so7631109pgl.10
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 16 Aug 2020 23:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O8SkNeQ2iRC9AK8HGkt8A/EddL3/LkAQz0+EJ/G5Pko=;
 b=p3hVw/AZkEoQsRCwPixNbneatAJjeDqobsmlgu1rUf/3A1hqWaitCKQ7XKKmus2yAW
 zjBovtBG9gjXnTRCPKYW8c+UDKo6yozhVYRK8BFusT8tY/3EAoTDJisH9WYNt/T1O1p9
 9YZrMJ5r90ZgiSjY7vQdvVLmNe5SdTmBIa/oaC2oTsm3iab5vHx3SfAmsgIQCXA3RwAm
 xa4aLI4abA0fGOIe6ZcQgGXoz6KqmxJyEzwPLUTA7+xdegjr+l02bjp7adnW28jQjNEB
 3G7u87ubBzbbrk6OV7ynEHiTa9OCwae3YkNT/xT8y99icGXxSJtP/btdvMtHA0jsDLWw
 9A9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O8SkNeQ2iRC9AK8HGkt8A/EddL3/LkAQz0+EJ/G5Pko=;
 b=XHSPyxd6DguqAHv7AJZDpV5Lwyqofqxj62bS9HgaApphCmnrzcAIi34V7zMlkEgk6i
 ZggWDhZ3q02luJaoUeky+fvdx5d2BxsuCaq6iMrC9ELomIW7Z7QOvT7vIcrUoFNskZJk
 24vY6RHrDYAR0ryijr2550sKWuEGRDipOmpjonC6iB0n0Qz8uYrAo8MBsC5J3pjzO8LQ
 0x+rfYmXrHFH0sLvRLwY/i0aFKJE3pVRyOwBsV1qKHTA2bx9z4YxttxmrnpJSTul7AzL
 DJE/hWV+tEHnCL16Vf284R51RWLHPM4ffqqhaeJwmwRICrr/SSW8UFdWjOFTNTPJtk45
 qhsw==
X-Gm-Message-State: AOAM531OcHv0hwGGNiuDHi4sb6zHPumCFa/xQLap7hnP+nk9qJGVW4cy
 ghLIj1Ot4jbcT2RjUGmtN2M=
X-Google-Smtp-Source: ABdhPJwM1jMfQ6UzgeiLk/jw470MJezPZHPiz1MdewOa7/G9973gTET+m97QbiG5WW1gMclk22KPfg==
X-Received: by 2002:a63:6f06:: with SMTP id k6mr8872067pgc.304.1597645857562; 
 Sun, 16 Aug 2020 23:30:57 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id t25sm111627pgl.60.2020.08.16.23.30.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 23:30:56 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Mon, 17 Aug 2020 14:30:49 +0800
Message-Id: <1e29a394c9ccb72126dbc3e9769a59c0234f8649.1597645849.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7Yff-00DzyB-6B
Subject: [tipc-discussion] [PATCH net] ipv6: some fixes for ipv6_dev_find()
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
Cc: YOSHIFUJI Hideaki <hideaki.yoshifuji@miraclelinux.com>,
 tipc-discussion@lists.sourceforge.net, David Ahern <dsahern@gmail.com>,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This patch is to do 3 things for ipv6_dev_find():

  As David A. noticed,

  - rt6_lookup() is not really needed. Different from __ip_dev_find(),
    ipv6_dev_find() doesn't have a compatibility problem, so remove it.

  As Hideaki suggested,

  - "valid" (non-tentative) check for the address is also needed.
    ipv6_chk_addr() calls ipv6_chk_addr_and_flags(), which will
    traverse the address hash list, but it's heavy to be called
    inside ipv6_dev_find(). This patch is to reuse the code of
    ipv6_chk_addr_and_flags() for ipv6_dev_find().

  - dev parameter is passed into ipv6_dev_find(), as link-local
    addresses from user space has sin6_scope_id set and the dev
    lookup needs it.

Fixes: 81f6cb31222d ("ipv6: add ipv6_dev_find()")
Suggested-by: YOSHIFUJI Hideaki <hideaki.yoshifuji@miraclelinux.com>
Reported-by: David Ahern <dsahern@gmail.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 include/net/addrconf.h |  3 ++-
 net/ipv6/addrconf.c    | 60 +++++++++++++++++++-------------------------------
 net/tipc/udp_media.c   |  8 +++----
 3 files changed, 28 insertions(+), 43 deletions(-)

diff --git a/include/net/addrconf.h b/include/net/addrconf.h
index ba3f6c15..18f783d 100644
--- a/include/net/addrconf.h
+++ b/include/net/addrconf.h
@@ -97,7 +97,8 @@ bool ipv6_chk_custom_prefix(const struct in6_addr *addr,
 
 int ipv6_chk_prefix(const struct in6_addr *addr, struct net_device *dev);
 
-struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr);
+struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr,
+				 struct net_device *dev);
 
 struct inet6_ifaddr *ipv6_get_ifaddr(struct net *net,
 				     const struct in6_addr *addr,
diff --git a/net/ipv6/addrconf.c b/net/ipv6/addrconf.c
index 8e761b8..01146b6 100644
--- a/net/ipv6/addrconf.c
+++ b/net/ipv6/addrconf.c
@@ -1893,12 +1893,13 @@ EXPORT_SYMBOL(ipv6_chk_addr);
  *   2. does the address exist on the specific device
  *      (skip_dev_check = false)
  */
-int ipv6_chk_addr_and_flags(struct net *net, const struct in6_addr *addr,
-			    const struct net_device *dev, bool skip_dev_check,
-			    int strict, u32 banned_flags)
+static struct net_device *
+__ipv6_chk_addr_and_flags(struct net *net, const struct in6_addr *addr,
+			  const struct net_device *dev, bool skip_dev_check,
+			  int strict, u32 banned_flags)
 {
 	unsigned int hash = inet6_addr_hash(net, addr);
-	const struct net_device *l3mdev;
+	struct net_device *l3mdev, *ndev;
 	struct inet6_ifaddr *ifp;
 	u32 ifp_flags;
 
@@ -1909,10 +1910,11 @@ int ipv6_chk_addr_and_flags(struct net *net, const struct in6_addr *addr,
 		dev = NULL;
 
 	hlist_for_each_entry_rcu(ifp, &inet6_addr_lst[hash], addr_lst) {
-		if (!net_eq(dev_net(ifp->idev->dev), net))
+		ndev = ifp->idev->dev;
+		if (!net_eq(dev_net(ndev), net))
 			continue;
 
-		if (l3mdev_master_dev_rcu(ifp->idev->dev) != l3mdev)
+		if (l3mdev_master_dev_rcu(ndev) != l3mdev)
 			continue;
 
 		/* Decouple optimistic from tentative for evaluation here.
@@ -1923,15 +1925,23 @@ int ipv6_chk_addr_and_flags(struct net *net, const struct in6_addr *addr,
 			    : ifp->flags;
 		if (ipv6_addr_equal(&ifp->addr, addr) &&
 		    !(ifp_flags&banned_flags) &&
-		    (!dev || ifp->idev->dev == dev ||
+		    (!dev || ndev == dev ||
 		     !(ifp->scope&(IFA_LINK|IFA_HOST) || strict))) {
 			rcu_read_unlock();
-			return 1;
+			return ndev;
 		}
 	}
 
 	rcu_read_unlock();
-	return 0;
+	return NULL;
+}
+
+int ipv6_chk_addr_and_flags(struct net *net, const struct in6_addr *addr,
+			    const struct net_device *dev, bool skip_dev_check,
+			    int strict, u32 banned_flags)
+{
+	return __ipv6_chk_addr_and_flags(net, addr, dev, skip_dev_check,
+					 strict, banned_flags) ? 1 : 0;
 }
 EXPORT_SYMBOL(ipv6_chk_addr_and_flags);
 
@@ -1990,35 +2000,11 @@ EXPORT_SYMBOL(ipv6_chk_prefix);
  *
  * The caller should be protected by RCU, or RTNL.
  */
-struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr)
+struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr,
+				 struct net_device *dev)
 {
-	unsigned int hash = inet6_addr_hash(net, addr);
-	struct inet6_ifaddr *ifp, *result = NULL;
-	struct net_device *dev = NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(ifp, &inet6_addr_lst[hash], addr_lst) {
-		if (net_eq(dev_net(ifp->idev->dev), net) &&
-		    ipv6_addr_equal(&ifp->addr, addr)) {
-			result = ifp;
-			break;
-		}
-	}
-
-	if (!result) {
-		struct rt6_info *rt;
-
-		rt = rt6_lookup(net, addr, NULL, 0, NULL, 0);
-		if (rt) {
-			dev = rt->dst.dev;
-			ip6_rt_put(rt);
-		}
-	} else {
-		dev = result->idev->dev;
-	}
-	rcu_read_unlock();
-
-	return dev;
+	return __ipv6_chk_addr_and_flags(net, addr, dev, !dev, 1,
+					 IFA_F_TENTATIVE);
 }
 EXPORT_SYMBOL(ipv6_dev_find);
 
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 53f0de0..911d13c 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -660,6 +660,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 	struct udp_tunnel_sock_cfg tuncfg = {NULL};
 	struct nlattr *opts[TIPC_NLA_UDP_MAX + 1];
 	u8 node_id[NODE_ID_LEN] = {0,};
+	struct net_device *dev;
 	int rmcast = 0;
 
 	ub = kzalloc(sizeof(*ub), GFP_ATOMIC);
@@ -714,8 +715,6 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 	rcu_assign_pointer(ub->bearer, b);
 	tipc_udp_media_addr_set(&b->addr, &local);
 	if (local.proto == htons(ETH_P_IP)) {
-		struct net_device *dev;
-
 		dev = __ip_dev_find(net, local.ipv4.s_addr, false);
 		if (!dev) {
 			err = -ENODEV;
@@ -738,9 +737,8 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 		b->mtu = b->media->mtu;
 #if IS_ENABLED(CONFIG_IPV6)
 	} else if (local.proto == htons(ETH_P_IPV6)) {
-		struct net_device *dev;
-
-		dev = ipv6_dev_find(net, &local.ipv6);
+		dev = ub->ifindex ? __dev_get_by_index(net, ub->ifindex) : NULL;
+		dev = ipv6_dev_find(net, &local.ipv6, dev);
 		if (!dev) {
 			err = -ENODEV;
 			goto err;
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
