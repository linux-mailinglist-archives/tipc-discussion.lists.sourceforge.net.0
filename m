Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AB2701F50
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 May 2023 21:52:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pyHlp-0005OP-My;
	Sun, 14 May 2023 19:52:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1pyHlo-0005OI-AU
 for tipc-discussion@lists.sourceforge.net;
 Sun, 14 May 2023 19:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jyvf4TEwS2vn6fQxq7OrYN1TDJ6PU+gnGXB81K2v2K0=; b=azO4i9cGXFuVFxnl472bNxxaSq
 YBCktUaIZBhsM6nI/8vYuivCPMzVnFo3lyTvjTBHp8KqpJGFmZ/+zIp2/wlyoW2w7tDBFFvmx6Ssz
 Y0uAMrVBFuLR5X0rItx8iMN3GeWO7dccsPQ6h3AQ34V3zGMn5yHnlSVUfJMYzz/j/qWE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jyvf4TEwS2vn6fQxq7OrYN1TDJ6PU+gnGXB81K2v2K0=; b=GPBtK/aVsj+KxJvOhvKU+HLAhs
 GwZC9Qyz0JnAJZaC//S5mt7MMPXeEJGr3wK8wHT19z3Ih7GxFD6zpMYPfDE/roZORpKVhITMbePLK
 XjnaTiZnz52obF/KRpMzrbXFqMfMHSmW5seMJPxYmmwMkS/6smCy9FaxhbUdLE7FXqC4=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pyHlo-007dJh-7U for tipc-discussion@lists.sourceforge.net;
 Sun, 14 May 2023 19:52:40 +0000
Received: by mail-qt1-f175.google.com with SMTP id
 d75a77b69052e-3f529239e4aso3559401cf.0
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 May 2023 12:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684093954; x=1686685954;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jyvf4TEwS2vn6fQxq7OrYN1TDJ6PU+gnGXB81K2v2K0=;
 b=r99P5Df+3D3jsNP+KIrOr+xBLW2RECHOkLT4DUjVxA7bq2PuOnq7HAJTGv2Ax9+LL+
 K5kDeHm8Cjj4YzcxJ7N1ZYZvCMgl3gEOG5fiMyQyHcGEsFtZTwIhMiR1GhzeXvBXzROw
 c9H9CtPHRXrIDhwLmTIw1UEIonku/fzVkfTq0Ci7d0TyaByjAv3ZxHc2RrYb6uIXK4W7
 PaUdAjaBgriO5UoZpmr3DaR0msEwG9FyuwsD2c+9hqFreVd3tHZ6cn0jKi/3bjGWDZuO
 lNY1wkqIqTf4QV7vnptoJzQC5+CfdOfnh1Jn7sTfEGAZqc1fCAK9wLo13iX2hzuy6G1v
 CooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684093954; x=1686685954;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jyvf4TEwS2vn6fQxq7OrYN1TDJ6PU+gnGXB81K2v2K0=;
 b=cHl0CA16l/w883oiuQFWNK8cW0XT/M/BzvPd0KIPt2w4dkHZQt8MxAPdFFXguB9OPN
 Nfdjbi0akTQdJmGeURbzF6JYUDXMtIj4BAlKIV1QOdgKawiQieNj9UomyYSc7uibaiHR
 GhulC9mNp4i51KgHIGPlLA1Q07B1dvlFW7+nwdVpoGWmg9YazYYcNgEemQKya9F5xCOa
 TqMJRqqX3jh5tadjzChCSBociNUqZKQ3e9FrzaHf9kVH9j4As6BR/jcUoduTb0lLT3Md
 X6eSHb1ONMMiLmn73K2MhI3ckgitWLlvJ09fVy17KDzdMVVsX7Az5C/vVFns5x/PwWwn
 q35Q==
X-Gm-Message-State: AC+VfDzvRuDz9tFfYDzRxpI/lBXx5ZC1qOgJL/8J01TWQ1L+K92efY3P
 zcop1Vcn5hHmc+VRSmxJuE46ItGUlX2uUw==
X-Google-Smtp-Source: ACHHUZ5HO2jd3PRwDBjHw9uFywTkOFHu4MNDhdqs954iR5WE41qYYX1Cyn222mMEEF70mpJj2ReMYQ==
X-Received: by 2002:a05:622a:1a21:b0:3ef:36d0:c06e with SMTP id
 f33-20020a05622a1a2100b003ef36d0c06emr58804137qtb.33.1684093954367; 
 Sun, 14 May 2023 12:52:34 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 fa11-20020a05622a4ccb00b003f517e1fed2sm1069444qtb.15.2023.05.14.12.52.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 May 2023 12:52:34 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sun, 14 May 2023 15:52:29 -0400
Message-Id: <401254e10285db58966f64793d4762c23a25f9d3.1684093873.git.lucien.xin@gmail.com>
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
 Content preview: Checking the bearer min mtu with tipc_udp_mtu_bad() only
 works
 for IPv4 UDP bearer, and IPv6 UDP bearer has a different value for the min
 mtu. This patch checks with encap_hlen + TIPC_MIN_BEARER_MTU f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pyHlo-007dJh-7U
Subject: [tipc-discussion] [PATCHv3 net 3/3] tipc: check the bearer min mtu
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
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
