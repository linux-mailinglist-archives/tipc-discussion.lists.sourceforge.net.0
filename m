Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EF945CE09
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Nov 2021 21:29:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mpyt0-0001py-8Z; Wed, 24 Nov 2021 20:28:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mpysy-0001ps-My
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Nov 2021 20:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rODYSsWB4CZux1VUPCS8lNniJan1AcVlnsTKieR3j/4=; b=A4f/jcMXcW0O5p5DXrVrDbrr6m
 VYny2iI8C5apIM8vmzMeQYurWhMV5l1A5xhTu2Kbc1JeABTb05XOOuH97EA6vaVAzNaut60ivdGXM
 4hYYlWPrgJrrjNwz7E+sWLhTOB7IlulMqTK1FfS4Oz6qqLnQZLNaao96b0V5FzKiRtrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rODYSsWB4CZux1VUPCS8lNniJan1AcVlnsTKieR3j/4=; b=M
 ZucJ8qx+d3JdWuKDpVNkGST3ElYVHLoNUiC59x6qqftctoKSC+jejbzjA9yhZKjMU5ISQqSjeYc95
 zTpG+6jLal6WBQjIwn39qilMpKdFEaJkOuc3YMOl/V8DIkL3YhKvRWjIdrzcI/EPL3psJqj0feBfA
 3zVyTXnNXBZWzcsk=;
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpysu-007w1U-DA
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Nov 2021 20:28:56 +0000
Received: by mail-pg1-f171.google.com with SMTP id p17so3190946pgj.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Nov 2021 12:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rODYSsWB4CZux1VUPCS8lNniJan1AcVlnsTKieR3j/4=;
 b=MyP/GlzbCwEqNR/6MmOjO44pip9r6YXgteGq+lJzc24b5OXTLuldt6lD+sAUvetZY+
 URNTSqD8Cpd6o++dvAbO796MxLPlAj9LaWarAPqGZnkQ1XlDVSLpsFJptQUt9A4ZMxsJ
 T5NesoHfoZmfAZLOY7PeLFJ5SUwlP1oiQlKk7fKuEmLyoUA3VrNJUTMeKPH9MCt0bVbq
 xl53+LQTH5cS2Rx/i3QQDzOguWEDB8wsECqMVAhrLz9WkKKwO/H+R8RgQ1x4rToBVwiH
 ldcaf3y64Rm+ZAMcz4pvTf06Rd4y8q1mI2+OIduHK4NbLYGQMYoaaVs38y3FezsdmzaM
 8uaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rODYSsWB4CZux1VUPCS8lNniJan1AcVlnsTKieR3j/4=;
 b=CKdmCZeDQwVHQeTIySZTTbRTrKFi/RWYMp59IK0aAF+x1yInwJvnk8HCcsKw3b2b1R
 G710T0+BtlDZTQDPO7FvOND6WnrTgPlmoEbHM8DtHlt5X0MTnkRWRLen+VTi/RMMwC6m
 gXBnj3ai6MVVqqyYWHbSAbIt/+2s7f9/ybTBdh89Kqkm3s6T2EZAw/W4PEiJJp99+0nW
 OjD/zRb0zLbuhSAgWt0I+dZnyhP72TUMnqLz5/6KdglUlj8vY6dZ+36q3K6ayEmDusRq
 /Bzbl+NECPwmhdHj7Mmzr7V/vQ0JJ+wV5xFfK8saJ1SYyPbalzCXkwgT+1dBx5SSOEeH
 Iz9w==
X-Gm-Message-State: AOAM532djK81gPx9nXZeR++jkAD9i4cP/Kex9M1DUzijy8oIW9kckkEc
 v+8usV8VOBDydL0j4Rph2faMJemHKsnRaQ==
X-Google-Smtp-Source: ABdhPJzPRgT+zzV2yimK6XL+doVVcKnn5HpC76890nhCSSH8WB3XjackKsNYStif350x29D9ABnxMg==
X-Received: by 2002:a05:6a00:10d2:b0:44d:f03e:46c7 with SMTP id
 d18-20020a056a0010d200b0044df03e46c7mr8949665pfu.0.1637785725056; 
 Wed, 24 Nov 2021 12:28:45 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z7sm581195pfe.77.2021.11.24.12.28.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 12:28:44 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 24 Nov 2021 15:28:36 -0500
Message-Id: <8d3b6b985effdadac9cba9c3108ec0ba55bfe5b0.1637785716.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When key_exchange is disabled, there is no reason to accept
 MSG_CRYPTO msgs if it doesn't send MSG_CRYPTO msgs. Signed-off-by: Xin Long
 --- net/tipc/link.c | 3 ++- 1 file changed, 2 insertions(+), 1 deletion(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.171 listed in wl.mailspike.net]
X-Headers-End: 1mpysu-007w1U-DA
Subject: [tipc-discussion] [PATCH net-next] tipc: discard MSG_CRYPTO msgs
 when key_exchange_enabled is not set
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

When key_exchange is disabled, there is no reason to accept MSG_CRYPTO
msgs if it doesn't send MSG_CRYPTO msgs.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 09ae8448f394..8d9e09f48f4c 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1298,7 +1298,8 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
 		return false;
 #ifdef CONFIG_TIPC_CRYPTO
 	case MSG_CRYPTO:
-		if (TIPC_SKB_CB(skb)->decrypted) {
+		if (sysctl_tipc_key_exchange_enabled &&
+		    TIPC_SKB_CB(skb)->decrypted) {
 			tipc_crypto_msg_rcv(l->net, skb);
 			return true;
 		}
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
