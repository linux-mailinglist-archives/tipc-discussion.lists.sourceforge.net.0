Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE2B6F4CCF
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 00:13:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptyFT-0006i5-S2;
	Tue, 02 May 2023 22:13:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptyFS-0006hz-N1
 for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=13KxgOJcr7gVZ8an57+aultClqJTer559gf4P+MeESk=; b=mVtw1P5ep/2i9ykS4Js2EhlvF+
 FtAnZIryJQttUolGUvuzQ5b04GN7sd/yuxYNmeB7GI3HQMiUHt4VXizP/xOCQtv484cBEUfc1BLOQ
 hd8IpPI4P7DeMcq4mfTTeMcZIjYTgP2OuymUIM4dFd6HfK3BIkLySbqFgmyEznxeIktM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=13KxgOJcr7gVZ8an57+aultClqJTer559gf4P+MeESk=; b=cOWPki9qX+71IhSLa91ZOeSj4h
 XPG1/eV1mtcHm19t1HzOf1z78auS4vYqEvNE/KE50Y8a3BVxrIu3ZDhwrxSR0S6kL3uiO28Cm6RVx
 +LOxVVNQq+tKG4jPyfkx0ye/+1+K1HQlaQah+fVHueOiAHORDGDOsBf+BZpotI3vT27w=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptyFR-00C9jn-QA for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:27 +0000
Received: by mail-qk1-f180.google.com with SMTP id
 af79cd13be357-7515631b965so35825785a.0
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 02 May 2023 15:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683065600; x=1685657600;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=13KxgOJcr7gVZ8an57+aultClqJTer559gf4P+MeESk=;
 b=QQ/dHUjVwfaIetW2niX6G2tMyGPOV/RB7Qf1YTojUht72nMIs9k16ZxT1vvJpfBjy+
 0XT6dIB1rjjDYg2aj64LsZTyJAG3kj1SEPNN16fhkjLHfijzzls5cL1Jg+PwaVZ1Ojtt
 j2gtj+n1vfrumZ3dyDbUKG6gm9KP/9MuXbpCO5GjN01kBPi4abANY3rkQFMAsJEQXBhd
 3M0bwyVJc/NABoJzIfd97VyfaiFRUx47FNfVg0b7WiaIhqXcJhnIWXKegAZ8UZHdXyep
 ri4Ao3CCbmFfpGaakrnfii/2TZGFoKtypjrC4BncKk6g+J86VUhY5aZdeIDI7nyMoVoU
 yP/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683065600; x=1685657600;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=13KxgOJcr7gVZ8an57+aultClqJTer559gf4P+MeESk=;
 b=NaICvBibFmGaaDEe48gkC4WFAKv6PZBmiVOsLDCEvCMXYQzG2fJfXBdzLegUpnLzBb
 ougCAT8EKL1Ou/ek01YclOfomFnB/h0RWimPyLCjh6X+mTXg043WxBBpCCQCqFaZFQ4G
 q0wohrccZ0P007+Sh9vcUEQkZ6mJ/RzQiAaVpwP9qZMRCDTh2J5ico3qnZOHs1F63Otf
 K89jLkPf5Jo0SMqGvjVcQ0KcJfGpxc7G4MxcCQFdgch0e81bKsv3UfYc5pWKpv6iRFsp
 2z69gTjshOhsKL/PMnoL9+exJAGPLKHXeeqdxU+8OEaKttzZP3GB/htZRjq07/KLRv1g
 dWJw==
X-Gm-Message-State: AC+VfDwp6qypbou28XcyKFFnp9Alo0uzhPi2qyiO5UgEwgIhQoDHyy9i
 DfAh9yotqIL9XymUHWKZOzQ=
X-Google-Smtp-Source: ACHHUZ7XyuwUpeuXxLxeC+nX1/WQjqdrgU6QbBdfyffj1IifPnPzZt45bIwiX9H/vaQSGtWT21I80A==
X-Received: by 2002:ac8:7f48:0:b0:3e3:9185:cb15 with SMTP id
 g8-20020ac87f48000000b003e39185cb15mr186278qtk.7.1683065600032; 
 Tue, 02 May 2023 15:13:20 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 cf23-20020a05622a401700b003ef58044a4bsm10362636qtb.34.2023.05.02.15.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 May 2023 15:13:19 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue,  2 May 2023 18:13:15 -0400
Message-Id: <1a6d4021e30266c8ff11a2eb25390ccd32766cf4.1683065352.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1683065352.git.lucien.xin@gmail.com>
References: <cover.1683065352.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Checking the bearer min mtu with tipc_udp_mtu_bad() only
 works
 for IPv4 UDP bearer, and IPv6 UDP bearer has a different value for the min
 mtu. This patch checks with encap_hlen + TIPC_MIN_BEARER_MTU f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
X-Headers-End: 1ptyFR-00C9jn-QA
Subject: [tipc-discussion] [PATCHv2 net 3/3] tipc: check the bearer min mtu
 properly when setting it by netlink
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

Checking the bearer min mtu with tipc_udp_mtu_bad() only works for
IPv4 UDP bearer, and IPv6 UDP bearer has a different value for the
min mtu. This patch checks with encap_hlen + TIPC_MIN_BEARER_MTU
for min mtu, which works for both IPv4 and IPv6 UDP bearer.

Note that tipc_udp_mtu_bad() is still used to check media min mtu
in __tipc_nl_media_set(), as m->mtu currently is only used by the
IPv4 UDP bearer as its default mtu value.

Fixes: 682cd3cf946b ("tipc: confgiure and apply UDP bearer MTU on running links")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 0e9a29e1536b..53881406e200 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -1151,8 +1151,8 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
 				return -EINVAL;
 			}
 #ifdef CONFIG_TIPC_MEDIA_UDP
-			if (tipc_udp_mtu_bad(nla_get_u32
-					     (props[TIPC_NLA_PROP_MTU]))) {
+			if (nla_get_u32(props[TIPC_NLA_PROP_MTU]) <
+			    b->encap_hlen + TIPC_MIN_BEARER_MTU) {
 				NL_SET_ERR_MSG(info->extack,
 					       "MTU value is out-of-range");
 				return -EINVAL;
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
