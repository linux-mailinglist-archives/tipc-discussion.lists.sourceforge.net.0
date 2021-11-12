Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A7E44ED34
	for <lists+tipc-discussion@lfdr.de>; Fri, 12 Nov 2021 20:23:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mlc8b-0002wb-A9; Fri, 12 Nov 2021 19:23:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mlc8Z-0002wU-7b
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Nov 2021 19:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tu77TOc4gPADcvESmZFP1FcnOo6c1JoX6nghJjO9BEU=; b=INWeCQahll3K79UjDmZUUxVNNF
 AMZPTfa+O03iwT6qNrc3vBFgiSCes1kGg1EZHgPKdsWmqcEgceVURg4fsQ7lOQi6c7JnCMm1rRl0v
 cHywQOqqeEemk6t6iqYciVn5qQhtZWl7b+o9cHQHschzCLvKC4ov0xpFhg82JNlZdGDQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Tu77TOc4gPADcvESmZFP1FcnOo6c1JoX6nghJjO9BEU=; b=P
 xo6DMTlI5i9xtB1Kbi+7rmKp71qtRyaCiumAtgbpVFUglDbKnOlb5W9vEUO0yMobnqG/pIljmuC6g
 Up1W9QtwDXJi2rwUJCq8NJTJliPuvojzJW69zgPMcqyOuhJsSKLTt7N5XXzIrwASq8/v4e3c4aOOx
 0GtV0QGrntvlLFC8=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mlc8V-00047u-0C
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Nov 2021 19:22:59 +0000
Received: by mail-pj1-f51.google.com with SMTP id
 gx15-20020a17090b124f00b001a695f3734aso8425220pjb.0
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 12 Nov 2021 11:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tu77TOc4gPADcvESmZFP1FcnOo6c1JoX6nghJjO9BEU=;
 b=eK9QxRCmbLvcOAynk4aRD5xQv6+z6GWIKtceoDyjfo8bkvBUHC4Oz9JQzPnvA6MPli
 bVUbxmBBT+gHphVhZi1i8MZfeVszDqNNwrKpD7GCmc0zcDhSYdCcghwsprPtc7pQw546
 NWpKxW47vgkRUoomOho+wZ50YODqQ7Rs8sP774BXXZmpIq8omTEcuzuyrjEvb/2Cy3eR
 Bvx6P9j72jWfvR0U5tp3xwHUgtdjH2VYUAQ/wy/ClyCndLHSnaWqWfE8iDMSob0hv9lG
 n87R4Y9ATjIr99WYC8KgAxAX6yAGDRS+35er5bm0QvWnxMcDKliQLus/m2BJwmuuaPAj
 DiEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tu77TOc4gPADcvESmZFP1FcnOo6c1JoX6nghJjO9BEU=;
 b=eVp/jT8Ub0kSDtATEFaOawNYZi7bJrPyoO+g7BilRlyFucvC1TliYkdV7su01a0gy8
 FGqVtWR8ko/VszB8G+dXsZAz9w6L4P1panRdvGncvwCid/dW3iyCePGqVYzNtOm+GM/Z
 F3Ht20RCLcSkNKTeiRD5oU5ayIS4GvAka0DJtilsWBpFF+cZzuFST+qzfKaIe6Z7YaxS
 zbyfd4bQl9ozPuu1PKS6j1Iwl2+ms0mqJekHiY4Ahx8ZyQQoVob2Xy3bMmOsW8RtJv1u
 Ag0OK4XQb+1/dLgHdHW9fzAL2AOiXXzjSKL5OK31W3B814TZrtdUvRHDfzZezJILcl09
 JgoQ==
X-Gm-Message-State: AOAM531ZevbAIjZMB+wwjqDKJ+9POxXF3WpVWOOofrQ2iP4mYk7GySSp
 +kRo+sG4Twac4Lwb1pZ9HC8FdK4gzpAn4g==
X-Google-Smtp-Source: ABdhPJwxmJpO77CAwuWpHju7IboqTvJVXs8rHGsqDpC6PF27fuXffiYyXKX3+AvCAOjGU4Islmy4vA==
X-Received: by 2002:a17:902:a50f:b0:143:7dec:567 with SMTP id
 s15-20020a170902a50f00b001437dec0567mr10628387plq.18.1636744969176; 
 Fri, 12 Nov 2021 11:22:49 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id d6sm6802548pfh.190.2021.11.12.11.22.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 11:22:48 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Fri, 12 Nov 2021 14:22:41 -0500
Message-Id: <d34934d6dab6d6490c324c60eb9a06119302bde4.1636744961.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The MSG_CRYPTO msgs are always encrypted and sent to other
 nodes for keys' deployment. But when receiving in peers, if those nodes do
 not validate it and make sure it's encrypted, one could craft a ma [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mlc8V-00047u-0C
Subject: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
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

The MSG_CRYPTO msgs are always encrypted and sent to other nodes
for keys' deployment. But when receiving in peers, if those nodes
do not validate it and make sure it's encrypted, one could craft
a malicious MSG_CRYPTO msg to deploy its key with no need to know
other nodes' keys.

This patch is to do that by checking TIPC_SKB_CB(skb)->decrypted
and discard it if this packet never got decrypted.

Fixes: 1ef6f7c9390f ("tipc: add automatic session key exchange")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1b7a487c8841..09ae8448f394 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1298,8 +1298,11 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
 		return false;
 #ifdef CONFIG_TIPC_CRYPTO
 	case MSG_CRYPTO:
-		tipc_crypto_msg_rcv(l->net, skb);
-		return true;
+		if (TIPC_SKB_CB(skb)->decrypted) {
+			tipc_crypto_msg_rcv(l->net, skb);
+			return true;
+		}
+		fallthrough;
 #endif
 	default:
 		pr_warn("Dropping received illegal msg type\n");
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
