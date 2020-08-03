Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DF123A96B
	for <lists+tipc-discussion@lfdr.de>; Mon,  3 Aug 2020 17:35:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k2cUf-0004oo-AJ; Mon, 03 Aug 2020 15:35:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k2cUc-0004og-UQ
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 15:35:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gTtBRSzq0CEtu4NsIES9D/wYZ1FEY+3VPzbHpcqbh0c=; b=AahHI9+7/GaLOMoSMgBo+8gklW
 HotqHjUbUz1CEpU2vzdYSyFTb2s1iiI6a86IcUMFx8DTqNwoR1K6ont6AT4mu9GdvNRTBVcLu45Qo
 nc86+Dr5PgtikCCtW+LnkTQvvi5rz8QV0YgLzJDZPNJgKnroNre2y4g2bfoKEe0pHE0E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gTtBRSzq0CEtu4NsIES9D/wYZ1FEY+3VPzbHpcqbh0c=; b=T/P5flRWopWJmMsxh41xtXRhmS
 BJBcK5NdKT1N0mp8mV8/iUFAZpbwF69wk6BkPDp7XkfDe+YqL4DQ3Rlc6ayq51qQ6cqEscGHn6kuN
 t3eCWTBxQQCSADScWJcSUZSvd3lggEMlblU4GBun409QWJGW9vOPUBHWhyxf2jh5N/fk=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k2cUY-001Zpw-2D
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 15:35:14 +0000
Received: by mail-pj1-f67.google.com with SMTP id lx9so12117pjb.2
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 03 Aug 2020 08:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=gTtBRSzq0CEtu4NsIES9D/wYZ1FEY+3VPzbHpcqbh0c=;
 b=Nc6sDRe0CN+YLlPVdxOj+MmjImW+NkkMGG0pMT7PGskUM5lpwh2ij5IQZQDlgFYSeI
 J0Klgl93aEgZeF/sEuGVeGG/xpwec24qNiFbbSCFPIeqwWOvtfw5KXqyf6QynliQ7bBB
 fv6+HLK0xPSfZGoGB/u0SgbSHdVuw6iTgbJkZufwbNYqKDBiDzQT86NG+bAXwx+QiHMH
 qnVkG76zB40Qb4gT2Z4kKES2AFwyzYB9rx2RR8NQteF3Ni7f5dd0tvnmQC0P2K94Vca1
 ngdZ2vml2YT41tsbGJWYWC5LUHF7avTPnWnI2rzXSuO3/AT0NmRTq6yNsO2XgZpo8856
 bJ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=gTtBRSzq0CEtu4NsIES9D/wYZ1FEY+3VPzbHpcqbh0c=;
 b=KmjGvLdEosKPhowCUrieA6h3dTMNQ3ssmym99k0IiLyAKT3U87lj0EEroka6RBW3OI
 oXH2fM6jY77UACCFlnDRMUU7PWJ/s29fHdVn+UMbATYUdJuTnFWjIkxjNCbcWO4ALQxn
 mZ2O664pvhNMkIoGsG2ppe8larLl8LIoD67Gu8hNfrcGDl3kfzUOs9QTn3biwDQK7jx5
 ife+F5RqXgFPKpM1UMYWkYNhvdZQorHMqiyI5nATjvJoLS43Mh73XEDycogpiFm6gQIH
 RkF8tyg39p3Em+JKuexUSw+OJqcDAlp310pvWpno5mJdpiRDk8QWdelJEpORa/NcWV8c
 KX8A==
X-Gm-Message-State: AOAM533R5W2Q7OQ+GftS8AuQuX2hbkfGLyXERkaQZhZhBG6HI8KpVS96
 w+vDrieukw89HA/Pgb2tTXw=
X-Google-Smtp-Source: ABdhPJxTl5mFRSUmEvpfwgk4mwLzf0nzhnD/ZW7yOC/q4uBg4blE5muJQhVRwvNiuCf2iAxdN6facg==
X-Received: by 2002:a17:90a:3ac5:: with SMTP id
 b63mr18524402pjc.3.1596468904571; 
 Mon, 03 Aug 2020 08:35:04 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id y8sm18599846pjj.17.2020.08.03.08.35.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Aug 2020 08:35:03 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Mon,  3 Aug 2020 23:34:46 +0800
Message-Id: <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1596468610.git.lucien.xin@gmail.com>
References: <cover.1596468610.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1596468610.git.lucien.xin@gmail.com>
References: <cover.1596468610.git.lucien.xin@gmail.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2cUY-001Zpw-2D
Subject: [tipc-discussion] [PATCH net 1/2] ipv6: add ipv6_dev_find()
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
Cc: Jon Maloy <jon.maloy@ericsson.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 tipc-discussion@lists.sourceforge.net, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This is to add an ip_dev_find like function for ipv6, used to find
the dev by saddr.

It will be used by TIPC protocol. So also export it.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 include/net/addrconf.h |  2 ++
 net/ipv6/addrconf.c    | 39 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/include/net/addrconf.h b/include/net/addrconf.h
index 8418b7d..ba3f6c15 100644
--- a/include/net/addrconf.h
+++ b/include/net/addrconf.h
@@ -97,6 +97,8 @@ bool ipv6_chk_custom_prefix(const struct in6_addr *addr,
 
 int ipv6_chk_prefix(const struct in6_addr *addr, struct net_device *dev);
 
+struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr);
+
 struct inet6_ifaddr *ipv6_get_ifaddr(struct net *net,
 				     const struct in6_addr *addr,
 				     struct net_device *dev, int strict);
diff --git a/net/ipv6/addrconf.c b/net/ipv6/addrconf.c
index 840bfdb..857d6f9 100644
--- a/net/ipv6/addrconf.c
+++ b/net/ipv6/addrconf.c
@@ -1983,6 +1983,45 @@ int ipv6_chk_prefix(const struct in6_addr *addr, struct net_device *dev)
 }
 EXPORT_SYMBOL(ipv6_chk_prefix);
 
+/**
+ * ipv6_dev_find - find the first device with a given source address.
+ * @net: the net namespace
+ * @addr: the source address
+ *
+ * The caller should be protected by RCU, or RTNL.
+ */
+struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr)
+{
+	unsigned int hash = inet6_addr_hash(net, addr);
+	struct inet6_ifaddr *ifp, *result = NULL;
+	struct net_device *dev = NULL;
+
+	rcu_read_lock();
+	hlist_for_each_entry_rcu(ifp, &inet6_addr_lst[hash], addr_lst) {
+		if (net_eq(dev_net(ifp->idev->dev), net) &&
+		    ipv6_addr_equal(&ifp->addr, addr)) {
+			result = ifp;
+			break;
+		}
+	}
+
+	if (!result) {
+		struct rt6_info *rt;
+
+		rt = rt6_lookup(net, addr, NULL, 0, NULL, 0);
+		if (rt) {
+			dev = rt->dst.dev;
+			ip6_rt_put(rt);
+		}
+	} else {
+		dev = result->idev->dev;
+	}
+	rcu_read_unlock();
+
+	return dev;
+}
+EXPORT_SYMBOL(ipv6_dev_find);
+
 struct inet6_ifaddr *ipv6_get_ifaddr(struct net *net, const struct in6_addr *addr,
 				     struct net_device *dev, int strict)
 {
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
